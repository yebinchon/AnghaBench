
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct mspro_sys_info {int block_size; int user_block_count; int unit_size; int sectors_per_track; int heads; int cylinders; } ;
struct mspro_sys_attr {scalar_t__ id; struct mspro_sys_info* data; } ;
struct mspro_devinfo {int block_size; int user_block_count; int unit_size; int sectors_per_track; int heads; int cylinders; } ;
struct TYPE_15__ {scalar_t__* attrs; } ;
struct mspro_block_data {unsigned long cylinders; unsigned long heads; unsigned long sectors_per_track; unsigned long page_size; int usage_count; int active; TYPE_3__* disk; TYPE_5__* queue; int q_lock; TYPE_2__ attr_group; } ;
struct TYPE_14__ {scalar_t__* dma_mask; } ;
struct memstick_host {TYPE_1__ dev; } ;
struct memstick_dev {int dev; struct memstick_host* host; } ;
struct TYPE_17__ {struct memstick_dev* queuedata; } ;
struct TYPE_16__ {int first_minor; int disk_name; int * driverfs_dev; TYPE_5__* queue; struct mspro_block_data* private_data; int * fops; int major; } ;


 scalar_t__ BLK_BOUNCE_HIGH ;
 int ENODEV ;
 int ENOMEM ;
 int ENOSPC ;
 int GFP_KERNEL ;
 scalar_t__ MSPRO_BLOCK_ID_DEVINFO ;
 scalar_t__ MSPRO_BLOCK_ID_SYSINFO ;
 int MSPRO_BLOCK_MAX_PAGES ;
 int MSPRO_BLOCK_MAX_SEGS ;
 int MSPRO_BLOCK_PART_SHIFT ;
 int add_disk (TYPE_3__*) ;
 TYPE_3__* alloc_disk (int) ;
 unsigned long be16_to_cpu (int ) ;
 TYPE_5__* blk_init_queue (int ,int *) ;
 int blk_queue_bounce_limit (TYPE_5__*,scalar_t__) ;
 int blk_queue_logical_block_size (TYPE_5__*,int) ;
 int blk_queue_max_hw_sectors (TYPE_5__*,int) ;
 int blk_queue_max_segment_size (TYPE_5__*,int) ;
 int blk_queue_max_segments (TYPE_5__*,int ) ;
 int blk_queue_prep_rq (TYPE_5__*,int ) ;
 int dev_dbg (int *,char*,unsigned long) ;
 int idr_get_new (int *,struct memstick_dev*,int*) ;
 int idr_pre_get (int *,int ) ;
 int idr_remove (int *,int) ;
 int major ;
 struct mspro_block_data* memstick_get_drvdata (struct memstick_dev*) ;
 int ms_block_bdops ;
 int mspro_block_disk_idr ;
 int mspro_block_disk_lock ;
 int mspro_block_prepare_req ;
 int mspro_block_submit_req ;
 struct mspro_sys_attr* mspro_from_sysfs_attr (scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_disk (TYPE_3__*) ;
 int set_capacity (TYPE_3__*,unsigned long) ;
 int sprintf (int ,char*,int) ;

__attribute__((used)) static int mspro_block_init_disk(struct memstick_dev *card)
{
 struct mspro_block_data *msb = memstick_get_drvdata(card);
 struct memstick_host *host = card->host;
 struct mspro_devinfo *dev_info = ((void*)0);
 struct mspro_sys_info *sys_info = ((void*)0);
 struct mspro_sys_attr *s_attr = ((void*)0);
 int rc, disk_id;
 u64 limit = BLK_BOUNCE_HIGH;
 unsigned long capacity;

 if (host->dev.dma_mask && *(host->dev.dma_mask))
  limit = *(host->dev.dma_mask);

 for (rc = 0; msb->attr_group.attrs[rc]; ++rc) {
  s_attr = mspro_from_sysfs_attr(msb->attr_group.attrs[rc]);

  if (s_attr->id == MSPRO_BLOCK_ID_DEVINFO)
   dev_info = s_attr->data;
  else if (s_attr->id == MSPRO_BLOCK_ID_SYSINFO)
   sys_info = s_attr->data;
 }

 if (!dev_info || !sys_info)
  return -ENODEV;

 msb->cylinders = be16_to_cpu(dev_info->cylinders);
 msb->heads = be16_to_cpu(dev_info->heads);
 msb->sectors_per_track = be16_to_cpu(dev_info->sectors_per_track);

 msb->page_size = be16_to_cpu(sys_info->unit_size);

 if (!idr_pre_get(&mspro_block_disk_idr, GFP_KERNEL))
  return -ENOMEM;

 mutex_lock(&mspro_block_disk_lock);
 rc = idr_get_new(&mspro_block_disk_idr, card, &disk_id);
 mutex_unlock(&mspro_block_disk_lock);

 if (rc)
  return rc;

 if ((disk_id << MSPRO_BLOCK_PART_SHIFT) > 255) {
  rc = -ENOSPC;
  goto out_release_id;
 }

 msb->disk = alloc_disk(1 << MSPRO_BLOCK_PART_SHIFT);
 if (!msb->disk) {
  rc = -ENOMEM;
  goto out_release_id;
 }

 msb->queue = blk_init_queue(mspro_block_submit_req, &msb->q_lock);
 if (!msb->queue) {
  rc = -ENOMEM;
  goto out_put_disk;
 }

 msb->queue->queuedata = card;
 blk_queue_prep_rq(msb->queue, mspro_block_prepare_req);

 blk_queue_bounce_limit(msb->queue, limit);
 blk_queue_max_hw_sectors(msb->queue, MSPRO_BLOCK_MAX_PAGES);
 blk_queue_max_segments(msb->queue, MSPRO_BLOCK_MAX_SEGS);
 blk_queue_max_segment_size(msb->queue,
       MSPRO_BLOCK_MAX_PAGES * msb->page_size);

 msb->disk->major = major;
 msb->disk->first_minor = disk_id << MSPRO_BLOCK_PART_SHIFT;
 msb->disk->fops = &ms_block_bdops;
 msb->usage_count = 1;
 msb->disk->private_data = msb;
 msb->disk->queue = msb->queue;
 msb->disk->driverfs_dev = &card->dev;

 sprintf(msb->disk->disk_name, "mspblk%d", disk_id);

 blk_queue_logical_block_size(msb->queue, msb->page_size);

 capacity = be16_to_cpu(sys_info->user_block_count);
 capacity *= be16_to_cpu(sys_info->block_size);
 capacity *= msb->page_size >> 9;
 set_capacity(msb->disk, capacity);
 dev_dbg(&card->dev, "capacity set %ld\n", capacity);

 add_disk(msb->disk);
 msb->active = 1;
 return 0;

out_put_disk:
 put_disk(msb->disk);
out_release_id:
 mutex_lock(&mspro_block_disk_lock);
 idr_remove(&mspro_block_disk_idr, disk_id);
 mutex_unlock(&mspro_block_disk_lock);
 return rc;
}
