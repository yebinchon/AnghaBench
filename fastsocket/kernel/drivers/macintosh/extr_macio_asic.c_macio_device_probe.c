
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device_id {int dummy; } ;
struct macio_driver {int (* probe ) (struct macio_dev*,struct of_device_id const*) ;int match_table; } ;
struct macio_dev {int ofdev; } ;
struct device {int driver; } ;


 int ENODEV ;
 int macio_dev_get (struct macio_dev*) ;
 int macio_dev_put (struct macio_dev*) ;
 struct of_device_id* of_match_device (int ,int *) ;
 int stub1 (struct macio_dev*,struct of_device_id const*) ;
 struct macio_dev* to_macio_device (struct device*) ;
 struct macio_driver* to_macio_driver (int ) ;

__attribute__((used)) static int macio_device_probe(struct device *dev)
{
 int error = -ENODEV;
 struct macio_driver *drv;
 struct macio_dev *macio_dev;
 const struct of_device_id *match;

 drv = to_macio_driver(dev->driver);
 macio_dev = to_macio_device(dev);

 if (!drv->probe)
  return error;

 macio_dev_get(macio_dev);

 match = of_match_device(drv->match_table, &macio_dev->ofdev);
 if (match)
  error = drv->probe(macio_dev, match);
 if (error)
  macio_dev_put(macio_dev);

 return error;
}
