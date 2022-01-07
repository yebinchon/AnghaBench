
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long
_clk_simple_round_rate(struct clk *clk, unsigned long rate, unsigned int limit)
{
 int div;
 unsigned long parent_rate;

 parent_rate = clk_get_rate(clk->parent);

 div = parent_rate / rate;
 if (parent_rate % rate)
  div++;

 if (div > limit)
  div = limit;

 return parent_rate / div;
}
