
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int rate; TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;


 int FRQCR ;
 int ctrl_inl (int ) ;
 int* ifc_divisors ;

__attribute__((used)) static void cpu_clk_recalc(struct clk *clk)
{
 int idx = (ctrl_inl(FRQCR) >> 20) & 0x0000000f;
 clk->rate = clk->parent->rate / ifc_divisors[idx];
}
