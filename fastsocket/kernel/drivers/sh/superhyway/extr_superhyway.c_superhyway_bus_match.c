
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superhyway_driver {struct superhyway_device_id* id_table; } ;
struct superhyway_device_id {int dummy; } ;
struct superhyway_device {int dummy; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ superhyway_match_id (struct superhyway_device_id const*,struct superhyway_device*) ;
 struct superhyway_device* to_superhyway_device (struct device*) ;
 struct superhyway_driver* to_superhyway_driver (struct device_driver*) ;

__attribute__((used)) static int superhyway_bus_match(struct device *dev, struct device_driver *drv)
{
 struct superhyway_device *shyway_dev = to_superhyway_device(dev);
 struct superhyway_driver *shyway_drv = to_superhyway_driver(drv);
 const struct superhyway_device_id *ids = shyway_drv->id_table;

 if (!ids)
  return -EINVAL;
 if (superhyway_match_id(ids, shyway_dev))
  return 1;

 return -ENODEV;
}
