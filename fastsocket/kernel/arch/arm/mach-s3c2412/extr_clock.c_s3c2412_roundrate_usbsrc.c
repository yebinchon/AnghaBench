
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long s3c2412_roundrate_usbsrc(struct clk *clk,
           unsigned long rate)
{
 unsigned long parent_rate = clk_get_rate(clk->parent);
 int div;

 if (rate > parent_rate)
  return parent_rate;

 div = parent_rate / rate;
 if (div > 2)
  div = 2;

 return parent_rate / div;
}
