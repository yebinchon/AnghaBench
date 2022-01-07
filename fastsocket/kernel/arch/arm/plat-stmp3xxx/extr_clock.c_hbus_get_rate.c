
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {long rate; int scale_reg; TYPE_1__* parent; } ;
struct TYPE_2__ {long rate; } ;


 int __raw_readl (int ) ;

__attribute__((used)) static long hbus_get_rate(struct clk *clk)
{
 long rate = clk->parent->rate;

 if (__raw_readl(clk->scale_reg) & 0x20) {
  rate *= __raw_readl(clk->scale_reg) & 0x1f;
  rate /= 32;
 } else
  rate /= __raw_readl(clk->scale_reg) & 0x1f;
 clk->rate = rate;

 return rate;
}
