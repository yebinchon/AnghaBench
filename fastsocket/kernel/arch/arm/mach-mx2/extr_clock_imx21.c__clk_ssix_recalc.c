
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long _clk_ssix_recalc(struct clk *clk, unsigned long pdf)
{
 unsigned long parent_rate;

 parent_rate = clk_get_rate(clk->parent);

 pdf = (pdf < 2) ? 124UL : pdf;

 return 2UL * parent_rate / pdf;
}
