
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct maple_driver {int function; } ;
struct TYPE_2__ {int function; } ;
struct maple_device {TYPE_1__ devinfo; } ;
struct device_driver {int dummy; } ;
struct device {int dummy; } ;


 int cpu_to_be32 (int ) ;
 struct maple_device* to_maple_dev (struct device*) ;
 struct maple_driver* to_maple_driver (struct device_driver*) ;

__attribute__((used)) static int maple_match_bus_driver(struct device *devptr,
      struct device_driver *drvptr)
{
 struct maple_driver *maple_drv = to_maple_driver(drvptr);
 struct maple_device *maple_dev = to_maple_dev(devptr);


 if (maple_dev->devinfo.function == 0xFFFFFFFF)
  return 0;
 else if (maple_dev->devinfo.function &
   cpu_to_be32(maple_drv->function))
  return 1;
 return 0;
}
