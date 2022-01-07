
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ parent; } ;
struct amba_device {TYPE_1__ res; } ;


 int kfree (struct amba_device*) ;
 int release_resource (TYPE_1__*) ;
 struct amba_device* to_amba_device (struct device*) ;

__attribute__((used)) static void amba_device_release(struct device *dev)
{
 struct amba_device *d = to_amba_device(dev);

 if (d->res.parent)
  release_resource(&d->res);
 kfree(d);
}
