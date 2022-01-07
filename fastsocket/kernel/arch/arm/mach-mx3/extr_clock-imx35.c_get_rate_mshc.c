
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 scalar_t__ CCM_BASE ;
 scalar_t__ CCM_PDR1 ;
 unsigned long __raw_readl (scalar_t__) ;
 unsigned long get_rate_arm () ;
 unsigned long get_rate_ppll () ;

__attribute__((used)) static unsigned long get_rate_mshc(struct clk *clk)
{
 unsigned long pdr1 = __raw_readl(CCM_BASE + CCM_PDR1);
 unsigned long div1, div2, rate;

 if (pdr1 & (1 << 7))
  rate = get_rate_arm();
 else
  rate = get_rate_ppll();

 div1 = (pdr1 >> 29) & 0x7;
 div2 = (pdr1 >> 22) & 0x3f;

 return rate / ((div1 + 1) * (div2 + 1));
}
