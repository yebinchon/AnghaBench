
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; } ;


 int FLLFRQ ;
 int PLLCR ;
 int __raw_readl (int ) ;

__attribute__((used)) static unsigned long fll_recalc(struct clk *clk)
{
 unsigned long mult = 0;
 unsigned long div = 1;

 if (__raw_readl(PLLCR) & 0x1000)
  mult = __raw_readl(FLLFRQ) & 0x3ff;

 if (__raw_readl(FLLFRQ) & 0x4000)
  div = 2;

 return (clk->parent->rate * mult) / div;
}
