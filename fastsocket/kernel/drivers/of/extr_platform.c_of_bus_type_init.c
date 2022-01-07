
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_type {char const* name; int dev_attrs; int shutdown; int resume; int suspend; int remove; int probe; int match; } ;


 int bus_register (struct bus_type*) ;
 int of_platform_bus_match ;
 int of_platform_device_attrs ;
 int of_platform_device_probe ;
 int of_platform_device_remove ;
 int of_platform_device_resume ;
 int of_platform_device_shutdown ;
 int of_platform_device_suspend ;

int of_bus_type_init(struct bus_type *bus, const char *name)
{
 bus->name = name;
 bus->match = of_platform_bus_match;
 bus->probe = of_platform_device_probe;
 bus->remove = of_platform_device_remove;
 bus->suspend = of_platform_device_suspend;
 bus->resume = of_platform_device_resume;
 bus->shutdown = of_platform_device_shutdown;
 bus->dev_attrs = of_platform_device_attrs;
 return bus_register(bus);
}
