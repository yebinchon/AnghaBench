
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; } ;


 unsigned long omap2_get_sysclkdiv () ;

__attribute__((used)) static unsigned long omap2_sys_clk_recalc(struct clk *clk)
{
 return clk->parent->rate / omap2_get_sysclkdiv();
}
