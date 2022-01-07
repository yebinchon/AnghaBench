
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; } ;


 int FRQCR ;
 int ctrl_inl (int ) ;
 unsigned long* p0fc_divisors ;

__attribute__((used)) static unsigned long module_clk_recalc(struct clk *clk)
{
 int idx = ((ctrl_inl(FRQCR) >> 4) & 0x07);
 return clk->parent->rate / p0fc_divisors[idx];
}
