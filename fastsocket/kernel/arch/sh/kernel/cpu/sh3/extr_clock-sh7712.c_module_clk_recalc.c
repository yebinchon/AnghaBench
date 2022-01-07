
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; } ;


 int FRQCR ;
 int ctrl_inw (int ) ;
 unsigned long* divisors ;

__attribute__((used)) static unsigned long module_clk_recalc(struct clk *clk)
{
 int frqcr = ctrl_inw(FRQCR);
 int idx = frqcr & 0x0007;

 return clk->parent->rate / divisors[idx];
}
