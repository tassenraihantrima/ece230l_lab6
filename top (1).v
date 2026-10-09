module top (
    input [7:0]sw,
    output [5:0]led
);

wire w;

light one(
    .downstairs(sw[0]), 
    .upstairs(sw[1]), 
    .stair_light(led[0])
    );

adder two(
    .A(sw[2]),
    .B(sw[3]),
    .Y(led[1]),
    .carry(led[2])
    );

full_adder three(
    .A(sw[4]),
    .B(sw[6]),
    .Cin(0),
    .Y(led[3]),
    .Cout(w)
    );
    
full_adder four(
    .A(sw[5]),
    .B(sw[7]),
    .Cin(w),
    .Y(led[4]),
    .Cout(led[5])
    );

endmodule