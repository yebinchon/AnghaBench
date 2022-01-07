
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int parent; } ;


 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long round_rate_per(struct clk *clk, unsigned long rate)
{
 u32 div;
 unsigned long parent_rate;

 parent_rate = clk_get_rate(clk->parent);

 div = parent_rate / rate;
 if (parent_rate % rate)
  div++;

 if (div > 64)
  div = 64;

 return parent_rate / div;
}
