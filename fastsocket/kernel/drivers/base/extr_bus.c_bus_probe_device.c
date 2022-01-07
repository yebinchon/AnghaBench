
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {struct bus_type* bus; } ;
struct bus_type {TYPE_1__* p; } ;
struct TYPE_2__ {scalar_t__ drivers_autoprobe; } ;


 int WARN_ON (int) ;
 int device_attach (struct device*) ;

void bus_probe_device(struct device *dev)
{
 struct bus_type *bus = dev->bus;
 int ret;

 if (bus && bus->p->drivers_autoprobe) {
  ret = device_attach(dev);
  WARN_ON(ret < 0);
 }
}
