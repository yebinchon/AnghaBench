
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; } ;


 int FRQMR1 ;
 int ctrl_inl (int ) ;
 unsigned long* mfc_divisors ;

__attribute__((used)) static unsigned long ddr_clk_recalc(struct clk *clk)
{
 int idx = ((ctrl_inl(FRQMR1) >> 12) & 0x0003);
 return clk->parent->rate / mfc_divisors[idx];
}
