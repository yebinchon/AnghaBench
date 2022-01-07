
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct tape_blk_data {int medium_changed; TYPE_1__* request_queue; int requeue_task; struct gendisk* disk; int request_queue_lock; int requeue_scheduled; struct tape_device* device; } ;
struct tape_device {int first_minor; struct tape_blk_data blk_data; } ;
struct gendisk {int first_minor; int disk_name; TYPE_1__* queue; void* private_data; int * fops; int major; } ;
struct TYPE_9__ {void* queuedata; } ;


 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int TAPEBLOCK_HSEC_SIZE ;
 int TAPEBLOCK_MAX_SEC ;
 int TAPE_MINORS_PER_DEV ;
 int add_disk (struct gendisk*) ;
 struct gendisk* alloc_disk (int) ;
 int atomic_set (int *,int ) ;
 int blk_cleanup_queue (TYPE_1__*) ;
 TYPE_1__* blk_init_queue (int ,int *) ;
 int blk_queue_logical_block_size (TYPE_1__*,int ) ;
 int blk_queue_max_hw_sectors (TYPE_1__*,int ) ;
 int blk_queue_max_segment_size (TYPE_1__*,long) ;
 int blk_queue_max_segments (TYPE_1__*,long) ;
 int blk_queue_segment_boundary (TYPE_1__*,long) ;
 int elevator_change (TYPE_1__*,char*) ;
 int set_capacity (struct gendisk*,int ) ;
 int spin_lock_init (int *) ;
 int sprintf (int ,char*,int) ;
 void* tape_get_device_reference (struct tape_device*) ;
 int tapeblock_fops ;
 int tapeblock_major ;
 int tapeblock_request_fn ;
 int tapeblock_requeue ;

int
tapeblock_setup_device(struct tape_device * device)
{
 struct tape_blk_data * blkdat;
 struct gendisk * disk;
 int rc;

 blkdat = &device->blk_data;
 blkdat->device = device;
 spin_lock_init(&blkdat->request_queue_lock);
 atomic_set(&blkdat->requeue_scheduled, 0);

 blkdat->request_queue = blk_init_queue(
  tapeblock_request_fn,
  &blkdat->request_queue_lock
 );
 if (!blkdat->request_queue)
  return -ENOMEM;

 rc = elevator_change(blkdat->request_queue, "noop");
 if (rc)
  goto cleanup_queue;

 blk_queue_logical_block_size(blkdat->request_queue, TAPEBLOCK_HSEC_SIZE);
 blk_queue_max_hw_sectors(blkdat->request_queue, TAPEBLOCK_MAX_SEC);
 blk_queue_max_segments(blkdat->request_queue, -1L);
 blk_queue_max_segment_size(blkdat->request_queue, -1L);
 blk_queue_segment_boundary(blkdat->request_queue, -1L);

 disk = alloc_disk(1);
 if (!disk) {
  rc = -ENOMEM;
  goto cleanup_queue;
 }

 disk->major = tapeblock_major;
 disk->first_minor = device->first_minor;
 disk->fops = &tapeblock_fops;
 disk->private_data = tape_get_device_reference(device);
 disk->queue = blkdat->request_queue;
 set_capacity(disk, 0);
 sprintf(disk->disk_name, "btibm%d",
  device->first_minor / TAPE_MINORS_PER_DEV);

 blkdat->disk = disk;
 blkdat->medium_changed = 1;
 blkdat->request_queue->queuedata = tape_get_device_reference(device);

 add_disk(disk);

 tape_get_device_reference(device);
 INIT_WORK(&blkdat->requeue_task, tapeblock_requeue);

 return 0;

cleanup_queue:
 blk_cleanup_queue(blkdat->request_queue);
 blkdat->request_queue = ((void*)0);

 return rc;
}
