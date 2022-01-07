
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {int dummy; } ;
struct device {int dummy; } ;
struct cx_drv {struct cx_device_id* id_table; } ;
struct cx_device_id {scalar_t__ part_num; } ;
struct TYPE_2__ {scalar_t__ part_num; } ;
struct cx_dev {TYPE_1__ cx_id; } ;


 struct cx_dev* to_cx_dev (struct device*) ;
 struct cx_drv* to_cx_driver (struct device_driver*) ;

__attribute__((used)) static int tiocx_match(struct device *dev, struct device_driver *drv)
{
 struct cx_dev *cx_dev = to_cx_dev(dev);
 struct cx_drv *cx_drv = to_cx_driver(drv);
 const struct cx_device_id *ids = cx_drv->id_table;

 if (!ids)
  return 0;

 while (ids->part_num) {
  if (ids->part_num == cx_dev->cx_id.part_num)
   return 1;
  ids++;
 }
 return 0;

}
