
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_platform_driver {struct of_device_id* match_table; } ;
struct of_device_id {int dummy; } ;
struct of_device {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 int * of_match_device (struct of_device_id const*,struct of_device*) ;
 struct of_device* to_of_device (struct device*) ;
 struct of_platform_driver* to_of_platform_driver (struct device_driver*) ;

__attribute__((used)) static int of_platform_bus_match(struct device *dev, struct device_driver *drv)
{
 struct of_device *of_dev = to_of_device(dev);
 struct of_platform_driver *of_drv = to_of_platform_driver(drv);
 const struct of_device_id *matches = of_drv->match_table;

 if (!matches)
  return 0;

 return of_match_device(matches, of_dev) != ((void*)0);
}
