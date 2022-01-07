
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int * bus; } ;
struct scm_driver {struct device_driver drv; } ;


 int driver_register (struct device_driver*) ;
 int scm_bus_type ;

int scm_driver_register(struct scm_driver *scmdrv)
{
 struct device_driver *drv = &scmdrv->drv;

 drv->bus = &scm_bus_type;

 return driver_register(drv);
}
