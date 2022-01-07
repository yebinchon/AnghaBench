
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dio_driver {int (* probe ) (struct dio_dev*,struct dio_device_id const*) ;int id_table; } ;
struct dio_device_id {int dummy; } ;
struct dio_dev {struct dio_driver* driver; } ;
struct device {int driver; } ;


 struct dio_device_id* dio_match_device (int ,struct dio_dev*) ;
 int stub1 (struct dio_dev*,struct dio_device_id const*) ;
 struct dio_dev* to_dio_dev (struct device*) ;
 struct dio_driver* to_dio_driver (int ) ;

__attribute__((used)) static int dio_device_probe(struct device *dev)
{
 int error = 0;
 struct dio_driver *drv = to_dio_driver(dev->driver);
 struct dio_dev *d = to_dio_dev(dev);

 if (!d->driver && drv->probe) {
  const struct dio_device_id *id;

  id = dio_match_device(drv->id_table, d);
  if (id)
   error = drv->probe(d, id);
  if (error >= 0) {
   d->driver = drv;
   error = 0;
  }
 }
 return error;
}
