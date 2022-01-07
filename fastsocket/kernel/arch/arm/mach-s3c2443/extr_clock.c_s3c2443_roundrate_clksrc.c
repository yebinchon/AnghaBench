
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long s3c2443_roundrate_clksrc(struct clk *clk,
           unsigned long rate,
           unsigned int max)
{
 unsigned long parent_rate = clk_get_rate(clk->parent);
 int div;

 if (rate > parent_rate)
  return parent_rate;



 div = (rate / parent_rate);

 if (div < 1)
  div = 1;
 else if (div > max)
  div = max;

 return parent_rate / div;
}
