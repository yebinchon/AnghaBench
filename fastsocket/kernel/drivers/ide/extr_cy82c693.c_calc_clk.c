
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int calc_clk(int time, int bus_speed)
{
 int clocks;

 clocks = (time*bus_speed+999)/1000 - 1;

 if (clocks < 0)
  clocks = 0;

 if (clocks > 0x0F)
  clocks = 0x0F;

 return clocks;
}
