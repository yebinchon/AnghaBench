
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long (* get_rate ) (TYPE_1__*) ;} ;


 int PLLDIV ;
 int PLLMUL ;
 int PM_BFEXT (int ,unsigned long) ;
 unsigned long stub1 (TYPE_1__*) ;

__attribute__((used)) static unsigned long pll_get_rate(struct clk *clk, unsigned long control)
{
 unsigned long div, mul, rate;

 div = PM_BFEXT(PLLDIV, control) + 1;
 mul = PM_BFEXT(PLLMUL, control) + 1;

 rate = clk->parent->get_rate(clk->parent);
 rate = (rate + div / 2) / div;
 rate *= mul;

 return rate;
}
