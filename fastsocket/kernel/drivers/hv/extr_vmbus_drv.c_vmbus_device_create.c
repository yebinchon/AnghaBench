
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uuid_le ;
struct vmbus_channel {int dummy; } ;
struct hv_device {int dev_instance; int dev_type; struct vmbus_channel* channel; } ;


 int GFP_KERNEL ;
 struct hv_device* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int pr_err (char*) ;

struct hv_device *vmbus_device_create(uuid_le *type,
         uuid_le *instance,
         struct vmbus_channel *channel)
{
 struct hv_device *child_device_obj;

 child_device_obj = kzalloc(sizeof(struct hv_device), GFP_KERNEL);
 if (!child_device_obj) {
  pr_err("Unable to allocate device object for child device\n");
  return ((void*)0);
 }

 child_device_obj->channel = channel;
 memcpy(&child_device_obj->dev_type, type, sizeof(uuid_le));
 memcpy(&child_device_obj->dev_instance, instance,
        sizeof(uuid_le));


 return child_device_obj;
}
