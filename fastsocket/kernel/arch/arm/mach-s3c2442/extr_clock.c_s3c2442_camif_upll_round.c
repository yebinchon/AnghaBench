
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long s3c2442_camif_upll_round(struct clk *clk,
           unsigned long rate)
{
 unsigned long parent_rate = clk_get_rate(clk->parent);
 int div;

 if (rate > parent_rate)
  return parent_rate;

 div = parent_rate / rate;

 if (div == 3)
  return parent_rate / 3;



 div /= 2;

 if (div < 1)
  div = 1;
 else if (div > 16)
  div = 16;

 return parent_rate / (div * 2);
}
