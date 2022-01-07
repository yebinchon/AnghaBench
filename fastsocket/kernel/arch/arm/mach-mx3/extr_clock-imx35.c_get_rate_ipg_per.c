
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 scalar_t__ CCM_BASE ;
 scalar_t__ CCM_PDR0 ;
 scalar_t__ CCM_PDR4 ;
 unsigned long __raw_readl (scalar_t__) ;
 unsigned long get_rate_ahb (int *) ;
 unsigned long get_rate_arm () ;

__attribute__((used)) static unsigned long get_rate_ipg_per(struct clk *clk)
{
 unsigned long pdr0 = __raw_readl(CCM_BASE + CCM_PDR0);
 unsigned long pdr4 = __raw_readl(CCM_BASE + CCM_PDR4);
 unsigned long div1, div2;

 if (pdr0 & (1 << 26)) {
  div1 = (pdr4 >> 19) & 0x7;
  div2 = (pdr4 >> 16) & 0x7;
  return get_rate_arm() / ((div1 + 1) * (div2 + 1));
 } else {
  div1 = (pdr0 >> 12) & 0x7;
  return get_rate_ahb(((void*)0)) / div1;
 }
}
