
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct storvsc_device {int destroy; } ;
struct hv_device {TYPE_1__* channel; } ;
struct TYPE_2__ {int inbound_lock; } ;


 struct storvsc_device* hv_get_drvdata (struct hv_device*) ;
 int hv_set_drvdata (struct hv_device*,int *) ;
 int kfree (struct storvsc_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int storvsc_wait_to_drain (struct storvsc_device*) ;
 int vmbus_close (TYPE_1__*) ;

__attribute__((used)) static int storvsc_dev_remove(struct hv_device *device)
{
 struct storvsc_device *stor_device;
 unsigned long flags;

 stor_device = hv_get_drvdata(device);

 spin_lock_irqsave(&device->channel->inbound_lock, flags);
 stor_device->destroy = 1;
 spin_unlock_irqrestore(&device->channel->inbound_lock, flags);







 storvsc_wait_to_drain(stor_device);
 spin_lock_irqsave(&device->channel->inbound_lock, flags);
 hv_set_drvdata(device, ((void*)0));
 spin_unlock_irqrestore(&device->channel->inbound_lock, flags);


 vmbus_close(device->channel);

 kfree(stor_device);
 return 0;
}
