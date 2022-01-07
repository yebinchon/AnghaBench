
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int dummy; } ;


 int CCM_CSCR ;
 int CCM_CSCR_SPEN ;
 int CCM_SPCTL1 ;
 int CCM_SPCTL1_LF ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static int _clk_spll_enable(struct clk *clk)
{
 u32 reg;

 reg = __raw_readl(CCM_CSCR);
 reg |= CCM_CSCR_SPEN;
 __raw_writel(reg, CCM_CSCR);

 while ((__raw_readl(CCM_SPCTL1) & CCM_SPCTL1_LF) == 0)
  ;
 return 0;
}
