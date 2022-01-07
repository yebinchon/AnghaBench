
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int CCM_PCDR0 ;
 int __raw_readl (int ) ;
 unsigned long get_rate_ssix (struct clk*,int) ;

__attribute__((used)) static unsigned long get_rate_ssi1(struct clk *clk)
{
 return get_rate_ssix(clk, (__raw_readl(CCM_PCDR0) >> 16) & 0x3f);
}
