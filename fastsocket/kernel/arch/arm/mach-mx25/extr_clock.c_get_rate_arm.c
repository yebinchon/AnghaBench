
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 scalar_t__ CCM_CCTL ;
 scalar_t__ CRM_BASE ;
 unsigned long get_rate_mpll () ;
 unsigned long readl (scalar_t__) ;

unsigned long get_rate_arm(struct clk *clk)
{
 unsigned long cctl = readl(CRM_BASE + CCM_CCTL);
 unsigned long rate = get_rate_mpll();

 if (cctl & (1 << 14))
  rate = (rate * 3) >> 1;

 return rate / ((cctl >> 30) + 1);
}
