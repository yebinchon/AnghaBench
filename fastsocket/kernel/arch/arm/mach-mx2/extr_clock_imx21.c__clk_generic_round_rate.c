
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct clk {int parent; } ;


 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long _clk_generic_round_rate(struct clk *clk,
   unsigned long rate,
   u32 max_divisor)
{
 u32 div;
 unsigned long parent_rate;

 parent_rate = clk_get_rate(clk->parent);

 div = parent_rate / rate;
 if (parent_rate % rate)
  div++;

 if (div > max_divisor)
  div = max_divisor;

 return parent_rate / div;
}
