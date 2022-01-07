
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct bus_type {int dummy; } ;


 struct device* bus_find_device (struct bus_type*,struct device*,void*,int ) ;
 int match_name ;

struct device *bus_find_device_by_name(struct bus_type *bus,
           struct device *start, const char *name)
{
 return bus_find_device(bus, start, (void *)name, match_name);
}
