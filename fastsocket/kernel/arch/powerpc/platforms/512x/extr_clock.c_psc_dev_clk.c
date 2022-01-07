
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int bit; int reg; } ;


 struct clk** dev_clks ;

__attribute__((used)) static struct clk *psc_dev_clk(int pscnum)
{
 int reg, bit;
 struct clk *clk;

 reg = 0;
 bit = 27 - pscnum;

 clk = &dev_clks[reg][bit];
 clk->reg = 0;
 clk->bit = bit;
 return clk;
}
