
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int MXC_CCM_SRPCTL ;
 unsigned long __raw_readl (int ) ;
 unsigned long mxc_decode_pll (unsigned long,int ) ;
 int pll_ref_get_rate () ;

__attribute__((used)) static unsigned long serial_pll_get_rate(struct clk *clk)
{
 unsigned long reg;

 reg = __raw_readl(MXC_CCM_SRPCTL);

 return mxc_decode_pll(reg, pll_ref_get_rate());
}
