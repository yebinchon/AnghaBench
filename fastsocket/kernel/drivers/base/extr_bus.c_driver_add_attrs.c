
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
struct bus_type {int * drv_attrs; } ;


 scalar_t__ attr_name (int ) ;
 int driver_create_file (struct device_driver*,int *) ;
 int driver_remove_file (struct device_driver*,int *) ;

__attribute__((used)) static int driver_add_attrs(struct bus_type *bus, struct device_driver *drv)
{
 int error = 0;
 int i;

 if (bus->drv_attrs) {
  for (i = 0; attr_name(bus->drv_attrs[i]); i++) {
   error = driver_create_file(drv, &bus->drv_attrs[i]);
   if (error)
    goto err;
  }
 }
done:
 return error;
err:
 while (--i >= 0)
  driver_remove_file(drv, &bus->drv_attrs[i]);
 goto done;
}
