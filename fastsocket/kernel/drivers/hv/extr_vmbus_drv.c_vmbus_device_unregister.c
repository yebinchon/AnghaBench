
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_device {int device; } ;


 int dev_name (int *) ;
 int device_unregister (int *) ;
 int pr_info (char*,int ) ;

void vmbus_device_unregister(struct hv_device *device_obj)
{




 device_unregister(&device_obj->device);

 pr_info("child device %s unregistered\n",
  dev_name(&device_obj->device));
}
