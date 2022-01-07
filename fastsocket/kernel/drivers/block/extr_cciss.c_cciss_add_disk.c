
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct gendisk {int first_minor; TYPE_6__* queue; int * driverfs_dev; TYPE_2__* private_data; int * fops; int major; int disk_name; } ;
struct TYPE_15__ {int ctlr; TYPE_2__** drv; int cciss_max_sectors; int maxsgentries; TYPE_1__* pdev; int major; int lock; } ;
typedef TYPE_3__ ctlr_info_t ;
struct TYPE_16__ {TYPE_3__* queuedata; } ;
struct TYPE_14__ {TYPE_6__* queue; int block_size; int dev; } ;
struct TYPE_13__ {int dma_mask; } ;


 int NWD_SHIFT ;
 int add_disk (struct gendisk*) ;
 int blk_cleanup_queue (TYPE_6__*) ;
 TYPE_6__* blk_init_queue (int ,int *) ;
 int blk_queue_bounce_limit (TYPE_6__*,int ) ;
 int blk_queue_logical_block_size (TYPE_6__*,int ) ;
 int blk_queue_max_hw_sectors (TYPE_6__*,int ) ;
 int blk_queue_max_segments (TYPE_6__*,int ) ;
 int blk_queue_softirq_done (TYPE_6__*,int ) ;
 scalar_t__ cciss_create_ld_sysfs_entry (TYPE_3__*,int) ;
 int cciss_fops ;
 int cciss_softirq_done ;
 int do_cciss_request ;
 int sprintf (int ,char*,int,int) ;
 int wmb () ;

__attribute__((used)) static int cciss_add_disk(ctlr_info_t *h, struct gendisk *disk,
    int drv_index)
{
 disk->queue = blk_init_queue(do_cciss_request, &h->lock);
 if (!disk->queue)
  goto init_queue_failure;
 sprintf(disk->disk_name, "cciss/c%dd%d", h->ctlr, drv_index);
 disk->major = h->major;
 disk->first_minor = drv_index << NWD_SHIFT;
 disk->fops = &cciss_fops;
 if (cciss_create_ld_sysfs_entry(h, drv_index))
  goto cleanup_queue;
 disk->private_data = h->drv[drv_index];
 disk->driverfs_dev = &h->drv[drv_index]->dev;


 blk_queue_bounce_limit(disk->queue, h->pdev->dma_mask);


 blk_queue_max_segments(disk->queue, h->maxsgentries);

 blk_queue_max_hw_sectors(disk->queue, h->cciss_max_sectors);

 blk_queue_softirq_done(disk->queue, cciss_softirq_done);

 disk->queue->queuedata = h;

 blk_queue_logical_block_size(disk->queue,
         h->drv[drv_index]->block_size);




 wmb();
 h->drv[drv_index]->queue = disk->queue;
 add_disk(disk);
 return 0;

cleanup_queue:
 blk_cleanup_queue(disk->queue);
 disk->queue = ((void*)0);
init_queue_failure:
 return -1;
}
