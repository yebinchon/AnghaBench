
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 struct clk* clk_get_sys (char const*,char const*) ;
 char* dev_name (struct device*) ;

struct clk *clk_get(struct device *dev, const char *con_id)
{
 const char *dev_id = dev ? dev_name(dev) : ((void*)0);

 return clk_get_sys(dev_id, con_id);
}
