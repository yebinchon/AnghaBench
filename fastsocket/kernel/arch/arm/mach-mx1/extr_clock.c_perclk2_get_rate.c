
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int CCM_PCDR ;
 int CCM_PCDR_PCLK2_MASK ;
 int CCM_PCDR_PCLK2_OFFSET ;
 int __raw_readl (int ) ;
 int clk_get_rate (int ) ;

__attribute__((used)) static unsigned long perclk2_get_rate(struct clk *clk)
{
 return clk_get_rate(clk->parent) / (((__raw_readl(CCM_PCDR) &
   CCM_PCDR_PCLK2_MASK) >> CCM_PCDR_PCLK2_OFFSET) + 1);
}
