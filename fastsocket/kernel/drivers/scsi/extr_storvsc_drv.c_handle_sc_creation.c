
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmstorage_channel_properties {int dummy; } ;
struct vmbus_channel {TYPE_1__* primary_channel; } ;
struct storvsc_device {int open_sub_channel; } ;
struct hv_device {int dummy; } ;
struct TYPE_2__ {struct hv_device* device_obj; } ;


 struct storvsc_device* get_out_stor_device (struct hv_device*) ;
 int memset (struct vmstorage_channel_properties*,int ,int) ;
 int storvsc_on_channel_callback ;
 int storvsc_ringbuffer_size ;
 int vmbus_open (struct vmbus_channel*,int ,int ,void*,int,int ,struct vmbus_channel*) ;

__attribute__((used)) static void handle_sc_creation(struct vmbus_channel *new_sc)
{
 struct hv_device *device = new_sc->primary_channel->device_obj;
 struct storvsc_device *stor_device;
 struct vmstorage_channel_properties props;

 stor_device = get_out_stor_device(device);
 if (!stor_device)
  return;

 if (stor_device->open_sub_channel == 0)
  return;

 memset(&props, 0, sizeof(struct vmstorage_channel_properties));

 vmbus_open(new_sc,
     storvsc_ringbuffer_size,
     storvsc_ringbuffer_size,
     (void *)&props,
     sizeof(struct vmstorage_channel_properties),
     storvsc_on_channel_callback, new_sc);
}
