
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_4__* request_queue; TYPE_2__* disk; } ;
struct tape_device {TYPE_1__ blk_data; } ;
struct TYPE_7__ {void* queuedata; } ;
struct TYPE_6__ {struct tape_device* private_data; } ;


 int blk_cleanup_queue (TYPE_4__*) ;
 int del_gendisk (TYPE_2__*) ;
 int flush_scheduled_work () ;
 int put_disk (TYPE_2__*) ;
 void* tape_put_device (struct tape_device*) ;

void
tapeblock_cleanup_device(struct tape_device *device)
{
 flush_scheduled_work();
 tape_put_device(device);

 if (!device->blk_data.disk) {
  goto cleanup_queue;
 }

 del_gendisk(device->blk_data.disk);
 device->blk_data.disk->private_data =
  tape_put_device(device->blk_data.disk->private_data);
 put_disk(device->blk_data.disk);

 device->blk_data.disk = ((void*)0);
cleanup_queue:
 device->blk_data.request_queue->queuedata = tape_put_device(device);

 blk_cleanup_queue(device->blk_data.request_queue);
 device->blk_data.request_queue = ((void*)0);
}
