
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int vflag; int (* get_vendor ) () ;TYPE_1__* of_dev; int of_node; scalar_t__ worker_irqs; int orient2; int orient1; } ;
struct TYPE_4__ {int dev; } ;


 int ENODEV ;
 int ams_freefall_client ;
 TYPE_3__ ams_info ;
 int ams_input_init () ;
 int ams_shock_client ;
 int dev_attr_current ;
 int device_create_file (int *,int *) ;
 int device_remove_file (int *,int *) ;
 int of_device_unregister (TYPE_1__*) ;
 int * of_get_property (int ,char*,int *) ;
 TYPE_1__* of_platform_device_create (int ,char*,int *) ;
 int pmf_register_irq_client (int ,char*,int *) ;
 int pmf_unregister_irq_client (int *) ;
 int stub1 () ;

int ams_sensor_attach(void)
{
 int result;
 const u32 *prop;


 prop = of_get_property(ams_info.of_node, "orientation", ((void*)0));
 if (!prop)
  return -ENODEV;
 ams_info.orient1 = *prop;
 ams_info.orient2 = *(prop + 1);


 result = pmf_register_irq_client(ams_info.of_node,
   "accel-int-1",
   &ams_freefall_client);
 if (result < 0)
  return -ENODEV;


 ams_info.worker_irqs = 0;


 result = pmf_register_irq_client(ams_info.of_node,
   "accel-int-2",
   &ams_shock_client);
 if (result < 0)
  goto release_freefall;


 ams_info.of_dev = of_platform_device_create(ams_info.of_node, "ams", ((void*)0));
 if (!ams_info.of_dev) {
  result = -ENODEV;
  goto release_shock;
 }


 result = device_create_file(&ams_info.of_dev->dev, &dev_attr_current);
 if (result)
  goto release_of;

 ams_info.vflag = !!(ams_info.get_vendor() & 0x10);


 result = ams_input_init();
 if (result)
  goto release_device_file;

 return result;
release_device_file:
 device_remove_file(&ams_info.of_dev->dev, &dev_attr_current);
release_of:
 of_device_unregister(ams_info.of_dev);
release_shock:
 pmf_unregister_irq_client(&ams_shock_client);
release_freefall:
 pmf_unregister_irq_client(&ams_freefall_client);
 return result;
}
