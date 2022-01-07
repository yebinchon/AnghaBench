
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rio_driver {int (* probe ) (struct rio_dev*,struct rio_device_id const*) ;int id_table; } ;
struct rio_device_id {int dummy; } ;
struct rio_dev {struct rio_driver* driver; } ;
struct device {int driver; } ;


 int ENODEV ;
 int rio_dev_get (struct rio_dev*) ;
 int rio_dev_put (struct rio_dev*) ;
 struct rio_device_id* rio_match_device (int ,struct rio_dev*) ;
 int stub1 (struct rio_dev*,struct rio_device_id const*) ;
 struct rio_dev* to_rio_dev (struct device*) ;
 struct rio_driver* to_rio_driver (int ) ;

__attribute__((used)) static int rio_device_probe(struct device *dev)
{
 struct rio_driver *rdrv = to_rio_driver(dev->driver);
 struct rio_dev *rdev = to_rio_dev(dev);
 int error = -ENODEV;
 const struct rio_device_id *id;

 if (!rdev->driver && rdrv->probe) {
  if (!rdrv->id_table)
   return error;
  id = rio_match_device(rdrv->id_table, rdev);
  rio_dev_get(rdev);
  if (id)
   error = rdrv->probe(rdev, id);
  if (error >= 0) {
   rdev->driver = rdrv;
   error = 0;
  } else
   rio_dev_put(rdev);
 }
 return error;
}
