
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;
struct arm_ahb_div {unsigned long ahb; } ;


 scalar_t__ CCM_BASE ;
 scalar_t__ CCM_PDR0 ;
 unsigned long __raw_readl (scalar_t__) ;
 struct arm_ahb_div* clk_consumer ;
 unsigned long get_rate_mpll () ;

__attribute__((used)) static unsigned long get_rate_ahb(struct clk *clk)
{
 unsigned long pdr0 = __raw_readl(CCM_BASE + CCM_PDR0);
 struct arm_ahb_div *aad;
 unsigned long fref = get_rate_mpll();

 aad = &clk_consumer[(pdr0 >> 16) & 0xf];

 return fref / aad->ahb;
}
