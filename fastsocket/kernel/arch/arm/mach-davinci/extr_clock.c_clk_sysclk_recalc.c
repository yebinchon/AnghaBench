
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pll_data {int input_rate; scalar_t__ base; } ;
struct clk {int rate; int flags; scalar_t__ div_reg; TYPE_1__* parent; scalar_t__ pll_data; } ;
struct TYPE_2__ {int rate; struct pll_data* pll_data; } ;


 int PLLDIV_EN ;
 int PLLDIV_RATIO_MASK ;
 int PRE_PLL ;
 scalar_t__ WARN_ON (int) ;
 int __raw_readl (scalar_t__) ;

__attribute__((used)) static void clk_sysclk_recalc(struct clk *clk)
{
 u32 v, plldiv;
 struct pll_data *pll;


 if (clk->pll_data)
  return;

 if (WARN_ON(!clk->parent))
  return;

 clk->rate = clk->parent->rate;


 if (WARN_ON(!clk->parent->pll_data))
  return;

 pll = clk->parent->pll_data;


 if (clk->flags & PRE_PLL)
  clk->rate = pll->input_rate;

 if (!clk->div_reg)
  return;

 v = __raw_readl(pll->base + clk->div_reg);
 if (v & PLLDIV_EN) {
  plldiv = (v & PLLDIV_RATIO_MASK) + 1;
  if (plldiv)
   clk->rate /= plldiv;
 }
}
