
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct superhyway_driver {int (* probe ) (struct superhyway_device*,struct superhyway_device_id const*) ;int id_table; } ;
struct superhyway_device_id {int dummy; } ;
struct superhyway_device {int dummy; } ;
struct device {int driver; } ;


 int ENODEV ;
 int stub1 (struct superhyway_device*,struct superhyway_device_id const*) ;
 struct superhyway_device_id* superhyway_match_id (int ,struct superhyway_device*) ;
 struct superhyway_device* to_superhyway_device (struct device*) ;
 struct superhyway_driver* to_superhyway_driver (int ) ;

__attribute__((used)) static int superhyway_device_probe(struct device *dev)
{
 struct superhyway_device *shyway_dev = to_superhyway_device(dev);
 struct superhyway_driver *shyway_drv = to_superhyway_driver(dev->driver);

 if (shyway_drv && shyway_drv->probe) {
  const struct superhyway_device_id *id;

  id = superhyway_match_id(shyway_drv->id_table, shyway_dev);
  if (id)
   return shyway_drv->probe(shyway_dev, id);
 }

 return -ENODEV;
}
