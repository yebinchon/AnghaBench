
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; } ;


 int FRQCR ;
 int ctrl_inl (int ) ;
 unsigned long* ifc_divisors ;

__attribute__((used)) static unsigned long cpu_clk_recalc(struct clk *clk)
{
 int idx = ((ctrl_inl(FRQCR) >> 24) & 0x000f);
 return clk->parent->rate / ifc_divisors[idx];
}
