
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_device_attr {int dummy; } ;
struct ib_device {int (* query_device ) (struct ib_device*,struct ib_device_attr*) ;} ;


 int stub1 (struct ib_device*,struct ib_device_attr*) ;

int ib_query_device(struct ib_device *device,
      struct ib_device_attr *device_attr)
{
 return device->query_device(device, device_attr);
}
