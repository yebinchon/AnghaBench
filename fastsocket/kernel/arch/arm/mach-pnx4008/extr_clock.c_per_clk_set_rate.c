
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk {int rate; int scale_reg; TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;


 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;

__attribute__((used)) static int per_clk_set_rate(struct clk *clk, u32 rate)
{
 u32 tmp;

 tmp = __raw_readl(clk->scale_reg);
 tmp &= ~(0x1f << 2);
 tmp |= ((clk->parent->rate / clk->rate) - 1) << 2;
 __raw_writel(tmp, clk->scale_reg);
 clk->rate = rate;
 return 0;
}
