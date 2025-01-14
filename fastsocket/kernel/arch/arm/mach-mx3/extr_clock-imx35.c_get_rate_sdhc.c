
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int id; } ;


 scalar_t__ CCM_BASE ;
 scalar_t__ CCM_PDR3 ;
 unsigned long __raw_readl (scalar_t__) ;
 unsigned long get_3_3_div (unsigned long) ;
 unsigned long get_rate_arm () ;
 unsigned long get_rate_ppll () ;

__attribute__((used)) static unsigned long get_rate_sdhc(struct clk *clk)
{
 unsigned long pdr3 = __raw_readl(CCM_BASE + CCM_PDR3);
 unsigned long div, rate;

 if (pdr3 & (1 << 6))
  rate = get_rate_arm();
 else
  rate = get_rate_ppll();

 switch (clk->id) {
 default:
 case 0:
  div = pdr3 & 0x3f;
  break;
 case 1:
  div = (pdr3 >> 8) & 0x3f;
  break;
 case 2:
  div = (pdr3 >> 16) & 0x3f;
  break;
 }

 return rate / get_3_3_div(div);
}
