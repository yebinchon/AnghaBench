
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 scalar_t__ CCM_BASE ;
 scalar_t__ CCM_PDR4 ;
 unsigned long __raw_readl (scalar_t__) ;
 unsigned long get_3_3_div (unsigned long) ;
 unsigned long get_rate_arm () ;
 unsigned long get_rate_ppll () ;

__attribute__((used)) static unsigned long get_rate_otg(struct clk *clk)
{
 unsigned long pdr4 = __raw_readl(CCM_BASE + CCM_PDR4);
 unsigned long rate;

 if (pdr4 & (1 << 9))
  rate = get_rate_arm();
 else
  rate = get_rate_ppll();

 return rate / get_3_3_div((pdr4 >> 22) & 0x3f);
}
