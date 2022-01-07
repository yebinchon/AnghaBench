
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 int ENOENT ;
 struct clk* ERR_PTR (int ) ;
 int strcmp (char const*,char*) ;
 scalar_t__ txx9_gbus_clock ;

struct clk *clk_get(struct device *dev, const char *id)
{
 if (!strcmp(id, "spi-baseclk"))
  return (struct clk *)((unsigned long)txx9_gbus_clock / 2 / 2);
 if (!strcmp(id, "imbus_clk"))
  return (struct clk *)((unsigned long)txx9_gbus_clock / 2);
 return ERR_PTR(-ENOENT);
}
