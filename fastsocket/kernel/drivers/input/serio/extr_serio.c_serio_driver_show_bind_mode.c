
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio_driver {scalar_t__ manual_bind; } ;
struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct serio_driver* to_serio_driver (struct device_driver*) ;

__attribute__((used)) static ssize_t serio_driver_show_bind_mode(struct device_driver *drv, char *buf)
{
 struct serio_driver *serio_drv = to_serio_driver(drv);
 return sprintf(buf, "%s\n", serio_drv->manual_bind ? "manual" : "auto");
}
