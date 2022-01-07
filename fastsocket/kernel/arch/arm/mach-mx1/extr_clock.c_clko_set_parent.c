
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct clk {int * round_rate; int * set_rate; } ;
struct TYPE_4__ {scalar_t__ round_rate; scalar_t__ set_rate; } ;


 int ARRAY_SIZE (TYPE_1__**) ;
 int CCM_CSCR ;
 unsigned int CCM_CSCR_CLKO_MASK ;
 int CCM_CSCR_CLKO_OFFSET ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;
 int _clk_can_use_parent (TYPE_1__**,int ,struct clk*) ;
 int * _clk_parent_round_rate ;
 int * _clk_parent_set_rate ;
 TYPE_1__** clko_clocks ;

__attribute__((used)) static int clko_set_parent(struct clk *clk, struct clk *parent)
{
 int i;
 unsigned int reg;

 i = _clk_can_use_parent(clko_clocks, ARRAY_SIZE(clko_clocks), parent);
 if (i < 0)
  return i;

 reg = __raw_readl(CCM_CSCR) & ~CCM_CSCR_CLKO_MASK;
 reg |= i << CCM_CSCR_CLKO_OFFSET;
 __raw_writel(reg, CCM_CSCR);

 if (clko_clocks[i]->set_rate && clko_clocks[i]->round_rate) {
  clk->set_rate = _clk_parent_set_rate;
  clk->round_rate = _clk_parent_round_rate;
 } else {
  clk->set_rate = ((void*)0);
  clk->round_rate = ((void*)0);
 }

 return 0;
}
