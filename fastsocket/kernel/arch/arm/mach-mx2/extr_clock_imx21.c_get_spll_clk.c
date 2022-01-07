
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint32_t ;
struct clk {int parent; } ;


 int CCM_SPCTL0 ;
 unsigned long CCM_SPCTL0_MFD_MASK ;
 unsigned long CCM_SPCTL0_MFD_OFFSET ;
 unsigned long CCM_SPCTL0_MFI_MASK ;
 unsigned long CCM_SPCTL0_MFI_OFFSET ;
 unsigned long CCM_SPCTL0_MFN_MASK ;
 unsigned long CCM_SPCTL0_MFN_OFFSET ;
 unsigned long CCM_SPCTL0_PD_MASK ;
 unsigned long CCM_SPCTL0_PD_OFFSET ;
 unsigned long __raw_readl (int ) ;
 unsigned long clk_get_rate (int ) ;
 int do_div (unsigned long long,unsigned long) ;

__attribute__((used)) static unsigned long get_spll_clk(struct clk *clk)
{
 uint32_t reg;
 unsigned long ref_clk;
 unsigned long mfi = 0, mfn = 0, mfd = 0, pdf = 0;
 unsigned long long temp;

 ref_clk = clk_get_rate(clk->parent);

 reg = __raw_readl(CCM_SPCTL0);
 pdf = (reg & CCM_SPCTL0_PD_MASK) >> CCM_SPCTL0_PD_OFFSET;
 mfd = (reg & CCM_SPCTL0_MFD_MASK) >> CCM_SPCTL0_MFD_OFFSET;
 mfi = (reg & CCM_SPCTL0_MFI_MASK) >> CCM_SPCTL0_MFI_OFFSET;
 mfn = (reg & CCM_SPCTL0_MFN_MASK) >> CCM_SPCTL0_MFN_OFFSET;

 mfi = (mfi <= 5) ? 5 : mfi;
 temp = 2LL * ref_clk * mfn;
 do_div(temp, mfd + 1);
 temp = 2LL * ref_clk * mfi + temp;
 do_div(temp, pdf + 1);

 return (unsigned long)temp;
}
