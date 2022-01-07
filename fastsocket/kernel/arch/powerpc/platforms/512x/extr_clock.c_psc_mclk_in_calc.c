
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int rate; } ;


 int devtree_getfreq (char*) ;

__attribute__((used)) static void psc_mclk_in_calc(struct clk *clk)
{
 clk->rate = devtree_getfreq("psc_mclk_in");
 if (!clk->rate)
  clk->rate = 25000000;
}
