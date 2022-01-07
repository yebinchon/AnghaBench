
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ib_port_modify {int dummy; } ;
struct ib_device {int (* modify_port ) (struct ib_device*,scalar_t__,int,struct ib_port_modify*) ;} ;


 int EINVAL ;
 int ENOSYS ;
 scalar_t__ end_port (struct ib_device*) ;
 scalar_t__ start_port (struct ib_device*) ;
 int stub1 (struct ib_device*,scalar_t__,int,struct ib_port_modify*) ;

int ib_modify_port(struct ib_device *device,
     u8 port_num, int port_modify_mask,
     struct ib_port_modify *port_modify)
{
 if (!device->modify_port)
  return -ENOSYS;

 if (port_num < start_port(device) || port_num > end_port(device))
  return -EINVAL;

 return device->modify_port(device, port_num, port_modify_mask,
       port_modify);
}
