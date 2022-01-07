
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_driver {char* name; TYPE_1__* bus; } ;
struct TYPE_2__ {char* name; } ;


 int GFP_KERNEL ;
 char* kmalloc (scalar_t__,int ) ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char *make_driver_name(struct device_driver *drv)
{
 char *driver_name;

 driver_name = kmalloc(strlen(drv->name) + strlen(drv->bus->name) + 2,
         GFP_KERNEL);
 if (!driver_name)
  return ((void*)0);

 sprintf(driver_name, "%s:%s", drv->bus->name, drv->name);
 return driver_name;
}
