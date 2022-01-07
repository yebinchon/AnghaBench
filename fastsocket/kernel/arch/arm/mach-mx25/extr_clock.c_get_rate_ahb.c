
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 scalar_t__ CCM_CCTL ;
 scalar_t__ CRM_BASE ;
 unsigned long get_rate_arm (int *) ;
 unsigned long readl (scalar_t__) ;

__attribute__((used)) static unsigned long get_rate_ahb(struct clk *clk)
{
 unsigned long cctl = readl(CRM_BASE + CCM_CCTL);

 return get_rate_arm(((void*)0)) / (((cctl >> 28) & 0x3) + 1);
}
