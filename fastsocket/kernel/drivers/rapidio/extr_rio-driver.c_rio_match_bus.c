
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_driver {struct rio_device_id* id_table; } ;
struct rio_device_id {int dummy; } ;
struct rio_dev {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 struct rio_device_id* rio_match_device (struct rio_device_id const*,struct rio_dev*) ;
 struct rio_dev* to_rio_dev (struct device*) ;
 struct rio_driver* to_rio_driver (struct device_driver*) ;

__attribute__((used)) static int rio_match_bus(struct device *dev, struct device_driver *drv)
{
 struct rio_dev *rdev = to_rio_dev(dev);
 struct rio_driver *rdrv = to_rio_driver(drv);
 const struct rio_device_id *id = rdrv->id_table;
 const struct rio_device_id *found_id;

 if (!id)
  goto out;

 found_id = rio_match_device(id, rdev);

 if (found_id)
  return 1;

      out:return 0;
}
