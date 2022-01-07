
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int id; int parent; } ;


 int CCM_PCDR1 ;
 int __raw_readl (int ) ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long get_rate_per(struct clk *clk)
{
 unsigned long perclk_pdf, parent_rate;

 parent_rate = clk_get_rate(clk->parent);

 if (clk->id < 0 || clk->id > 3)
  return 0;

 perclk_pdf = (__raw_readl(CCM_PCDR1) >> (clk->id << 3)) & 0x3f;

 return parent_rate / (perclk_pdf + 1);
}
