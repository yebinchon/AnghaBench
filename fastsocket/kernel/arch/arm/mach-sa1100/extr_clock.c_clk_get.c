
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 int ENOENT ;
 struct clk* ERR_PTR (int ) ;
 struct clk clk_gpio27 ;
 char* dev_name (struct device*) ;
 scalar_t__ strcmp (char const*,char*) ;

struct clk *clk_get(struct device *dev, const char *id)
{
 const char *devname = dev_name(dev);

 return strcmp(devname, "sa1111.0") ? ERR_PTR(-ENOENT) : &clk_gpio27;
}
