
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__ rate; unsigned long (* get_rate ) (struct clk*) ;struct clk* parent; } ;


 scalar_t__ IS_ERR (struct clk*) ;
 unsigned long stub1 (struct clk*) ;

unsigned long clk_get_rate(struct clk *clk)
{
 if (IS_ERR(clk))
  return 0;

 if (clk->rate != 0)
  return clk->rate;

 if (clk->get_rate != ((void*)0))
  return (clk->get_rate)(clk);

 if (clk->parent != ((void*)0))
  return clk_get_rate(clk->parent);

 return clk->rate;
}
