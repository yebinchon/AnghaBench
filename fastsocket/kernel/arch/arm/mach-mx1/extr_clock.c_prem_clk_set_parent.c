
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int CCM_CSCR ;
 unsigned int CCM_CSCR_SYSTEM_SEL ;
 unsigned int __raw_readl (int ) ;
 int __raw_writel (unsigned int,int ) ;
 int _clk_can_use_parent (int ,int ,struct clk*) ;
 int prem_clk_clocks ;

__attribute__((used)) static int prem_clk_set_parent(struct clk *clk, struct clk *parent)
{
 int i;
 unsigned int reg = __raw_readl(CCM_CSCR);

 i = _clk_can_use_parent(prem_clk_clocks, ARRAY_SIZE(prem_clk_clocks),
    parent);

 switch (i) {
 case 0:
  reg &= ~CCM_CSCR_SYSTEM_SEL;
  break;
 case 1:
  reg |= CCM_CSCR_SYSTEM_SEL;
  break;
 default:
  return i;
 }

 __raw_writel(reg, CCM_CSCR);

 return 0;
}
