
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_lookup {int dummy; } ;
struct clk {int dummy; } ;


 int ENOMEM ;
 int clkdev_add (struct clk_lookup*) ;
 struct clk_lookup* clkdev_alloc (struct clk*,int *,char const*) ;

int nmdk_clk_create(struct clk *clk, const char *dev_id)
{
 struct clk_lookup *clkdev;

 clkdev = clkdev_alloc(clk, ((void*)0), dev_id);
 if (!clkdev)
  return -ENOMEM;
 clkdev_add(clkdev);
 return 0;
}
