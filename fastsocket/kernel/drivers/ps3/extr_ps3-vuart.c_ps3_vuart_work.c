
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct ps3_vuart_port_driver {int (* work ) (struct ps3_system_bus_device*) ;} ;
struct ps3_system_bus_device {int dummy; } ;


 int BUG_ON (int) ;
 struct ps3_vuart_port_driver* ps3_system_bus_dev_to_vuart_drv (struct ps3_system_bus_device*) ;
 struct ps3_system_bus_device* ps3_vuart_work_to_system_bus_dev (struct work_struct*) ;
 int stub1 (struct ps3_system_bus_device*) ;

__attribute__((used)) static void ps3_vuart_work(struct work_struct *work)
{
 struct ps3_system_bus_device *dev =
  ps3_vuart_work_to_system_bus_dev(work);
 struct ps3_vuart_port_driver *drv =
  ps3_system_bus_dev_to_vuart_drv(dev);

 BUG_ON(!drv);
 drv->work(dev);
}
