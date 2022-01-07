
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long round_rate_cpu(struct clk *clk, unsigned long rate)
{
 int div;
 unsigned long parent_rate;

 parent_rate = clk_get_rate(clk->parent);

 div = parent_rate / rate;
 if (parent_rate % rate)
  div++;

 if (div > 4)
  div = 4;

 return parent_rate / div;
}
