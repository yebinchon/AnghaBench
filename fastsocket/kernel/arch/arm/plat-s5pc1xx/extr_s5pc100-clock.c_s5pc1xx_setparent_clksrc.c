
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clksrc_clk {int mask; int shift; int reg_source; struct clk_sources* sources; } ;
struct clk_sources {int nr_sources; struct clk** sources; } ;
struct clk {int dummy; } ;


 int EINVAL ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 struct clksrc_clk* to_clksrc (struct clk*) ;

__attribute__((used)) static int s5pc1xx_setparent_clksrc(struct clk *clk, struct clk *parent)
{
 struct clksrc_clk *sclk = to_clksrc(clk);
 struct clk_sources *srcs = sclk->sources;
 u32 clksrc = __raw_readl(sclk->reg_source);
 int src_nr = -1;
 int ptr;

 for (ptr = 0; ptr < srcs->nr_sources; ptr++)
  if (srcs->sources[ptr] == parent) {
   src_nr = ptr;
   break;
  }

 if (src_nr >= 0) {
  clksrc &= ~sclk->mask;
  clksrc |= src_nr << sclk->shift;

  __raw_writel(clksrc, sclk->reg_source);
  return 0;
 }

 return -EINVAL;
}
