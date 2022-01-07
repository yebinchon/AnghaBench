
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_device {int dummy; } ;
struct device {int dummy; } ;


 struct hv_device* device_to_hv_device (struct device*) ;
 int kfree (struct hv_device*) ;

__attribute__((used)) static void vmbus_device_release(struct device *device)
{
 struct hv_device *hv_dev = device_to_hv_device(device);

 kfree(hv_dev);

}
