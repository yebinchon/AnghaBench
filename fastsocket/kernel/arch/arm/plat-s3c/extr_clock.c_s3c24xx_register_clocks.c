
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 scalar_t__ s3c24xx_register_clock (struct clk*) ;

int s3c24xx_register_clocks(struct clk **clks, int nr_clks)
{
 int fails = 0;

 for (; nr_clks > 0; nr_clks--, clks++) {
  if (s3c24xx_register_clock(*clks) < 0)
   fails++;
 }

 return fails;
}
