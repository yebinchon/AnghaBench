
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_2__ {struct clk* (* clk_get ) (struct device*,char const*) ;} ;


 int ENOSYS ;
 struct clk* ERR_PTR (int ) ;
 TYPE_1__ clk_functions ;
 struct clk* stub1 (struct device*,char const*) ;

struct clk *clk_get(struct device *dev, const char *id)
{
 if (clk_functions.clk_get)
  return clk_functions.clk_get(dev, id);
 return ERR_PTR(-ENOSYS);
}
