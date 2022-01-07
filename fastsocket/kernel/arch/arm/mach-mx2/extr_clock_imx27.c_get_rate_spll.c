
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct clk {int parent; } ;


 int CCM_SPCTL0 ;
 scalar_t__ CHIP_REV_2_0 ;
 int __raw_readl (int ) ;
 int __raw_writel (int ,int ) ;
 unsigned long clk_get_rate (int ) ;
 scalar_t__ mx27_revision () ;
 unsigned long mxc_decode_pll (int ,unsigned long) ;

__attribute__((used)) static unsigned long get_rate_spll(struct clk *clk)
{
 uint32_t reg;
 unsigned long rate;

 rate = clk_get_rate(clk->parent);

 reg = __raw_readl(CCM_SPCTL0);




 if (mx27_revision() >= CHIP_REV_2_0)
  __raw_writel(reg, CCM_SPCTL0);

 return mxc_decode_pll(reg, rate);
}
