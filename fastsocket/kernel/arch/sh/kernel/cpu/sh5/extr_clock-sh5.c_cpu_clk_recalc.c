
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; } ;


 int cprc_base ;
 int ctrl_inw (int ) ;
 unsigned long* ifc_table ;

__attribute__((used)) static unsigned long cpu_clk_recalc(struct clk *clk)
{
 int idx = (ctrl_inw(cprc_base) & 0x0007);
 return clk->parent->rate / ifc_table[idx];
}
