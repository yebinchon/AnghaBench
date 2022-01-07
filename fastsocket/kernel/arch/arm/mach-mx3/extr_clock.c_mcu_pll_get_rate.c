
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int MXC_CCM_CCMR ;
 unsigned long MXC_CCM_CCMR_MDS ;
 unsigned long MXC_CCM_CCMR_MPE ;
 int MXC_CCM_MPCTL ;
 unsigned long __raw_readl (int ) ;
 int ckih_clk ;
 unsigned long clk_get_rate (int *) ;
 unsigned long mxc_decode_pll (unsigned long,int ) ;
 int pll_ref_get_rate () ;

__attribute__((used)) static unsigned long mcu_pll_get_rate(struct clk *clk)
{
 unsigned long reg, ccmr;

 ccmr = __raw_readl(MXC_CCM_CCMR);

 if (!(ccmr & MXC_CCM_CCMR_MPE) || (ccmr & MXC_CCM_CCMR_MDS))
  return clk_get_rate(&ckih_clk);

 reg = __raw_readl(MXC_CCM_MPCTL);

 return mxc_decode_pll(reg, pll_ref_get_rate());
}
