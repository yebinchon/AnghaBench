
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2o_driver {int dummy; } ;
struct i2o_controller {int dummy; } ;


 int i2o_driver_notify_controller_remove (struct i2o_driver*,struct i2o_controller*) ;
 struct i2o_driver** i2o_drivers ;
 int i2o_max_drivers ;

void i2o_driver_notify_controller_remove_all(struct i2o_controller *c)
{
 int i;
 struct i2o_driver *drv;

 for (i = 0; i < i2o_max_drivers; i++) {
  drv = i2o_drivers[i];

  if (drv)
   i2o_driver_notify_controller_remove(drv, c);
 }
}
