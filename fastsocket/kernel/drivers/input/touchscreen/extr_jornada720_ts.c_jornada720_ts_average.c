
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int jornada720_ts_average(int coords[4])
{
 int coord, high_bits = coords[3];

 coord = coords[0] | ((high_bits & 0x03) << 8);
 coord += coords[1] | ((high_bits & 0x0c) << 6);
 coord += coords[2] | ((high_bits & 0x30) << 4);

 return coord / 3;
}
