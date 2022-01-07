
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_lookup {int dummy; } ;


 int clkdev_add (struct clk_lookup*) ;

void clks_register(struct clk_lookup *clks, size_t num)
{
 int i;

 for (i = 0; i < num; i++)
  clkdev_add(&clks[i]);
}
