
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int driver; } ;
struct cx_drv {int (* probe ) (struct cx_dev*,struct cx_device_id const*) ;int id_table; } ;
struct cx_device_id {int dummy; } ;
struct cx_dev {struct cx_drv* driver; } ;


 struct cx_device_id* cx_device_match (int ,struct cx_dev*) ;
 int stub1 (struct cx_dev*,struct cx_device_id const*) ;
 struct cx_dev* to_cx_dev (struct device*) ;
 struct cx_drv* to_cx_driver (int ) ;

__attribute__((used)) static int cx_device_probe(struct device *dev)
{
 const struct cx_device_id *id;
 struct cx_drv *cx_drv = to_cx_driver(dev->driver);
 struct cx_dev *cx_dev = to_cx_dev(dev);
 int error = 0;

 if (!cx_dev->driver && cx_drv->probe) {
  id = cx_device_match(cx_drv->id_table, cx_dev);
  if (id) {
   if ((error = cx_drv->probe(cx_dev, id)) < 0)
    return error;
   else
    cx_dev->driver = cx_drv;
  }
 }

 return error;
}
