
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device_driver {char const* name; } ;
struct device {TYPE_2__* class; TYPE_1__* bus; int driver; } ;
struct TYPE_4__ {char const* name; } ;
struct TYPE_3__ {char const* name; } ;


 struct device_driver* ACCESS_ONCE (int ) ;

const char *dev_driver_string(const struct device *dev)
{
 struct device_driver *drv;





 drv = ACCESS_ONCE(dev->driver);
 return drv ? drv->name :
   (dev->bus ? dev->bus->name :
   (dev->class ? dev->class->name : ""));
}
