
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct clk {int dummy; } ;


 int ENOENT ;
 struct clk* ERR_PTR (int ) ;
 int dev_name (struct device*) ;
 scalar_t__ strcmp (int ,char*) ;

struct clk *clk_get (struct device *dev, const char *id)
{
 return dev && strcmp(dev_name(dev), "cldc-lh7a40x") == 0
   ? ((void*)0) : ERR_PTR(-ENOENT);
}
