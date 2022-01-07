
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_platform_driver {int (* probe ) (struct of_device*,struct of_device_id const*) ;int match_table; } ;
struct of_device_id {int dummy; } ;
struct of_device {int dummy; } ;
struct device {int driver; } ;


 int ENODEV ;
 int of_dev_get (struct of_device*) ;
 int of_dev_put (struct of_device*) ;
 struct of_device_id* of_match_device (int ,struct of_device*) ;
 int stub1 (struct of_device*,struct of_device_id const*) ;
 struct of_device* to_of_device (struct device*) ;
 struct of_platform_driver* to_of_platform_driver (int ) ;

__attribute__((used)) static int of_platform_device_probe(struct device *dev)
{
 int error = -ENODEV;
 struct of_platform_driver *drv;
 struct of_device *of_dev;
 const struct of_device_id *match;

 drv = to_of_platform_driver(dev->driver);
 of_dev = to_of_device(dev);

 if (!drv->probe)
  return error;

 of_dev_get(of_dev);

 match = of_match_device(drv->match_table, of_dev);
 if (match)
  error = drv->probe(of_dev, match);
 if (error)
  of_dev_put(of_dev);

 return error;
}
