
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int scale_shift; long rate; int scale_reg; TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;


 int __raw_readl (int ) ;

__attribute__((used)) static long io_get_rate(struct clk *clk)
{
 long rate = clk->parent->rate * 18;
 int mask = 0x1f;

 rate /= (__raw_readl(clk->scale_reg) >> clk->scale_shift) & mask;
 clk->rate = rate;

 return rate;
}
