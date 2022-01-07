
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long s5pc1xx_roundrate_clksrc(struct clk *clk,
           unsigned long rate)
{
 unsigned long parent_rate = clk_get_rate(clk->parent);
 int div;

 if (rate > parent_rate)
  rate = parent_rate;
 else {
  div = rate / parent_rate;

  if (div == 0)
   div = 1;
  if (div > 16)
   div = 16;

  rate = parent_rate / div;
 }

 return rate;
}
