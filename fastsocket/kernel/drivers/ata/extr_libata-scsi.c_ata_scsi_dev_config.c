
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {scalar_t__ sector_size; int manage_start_stop; TYPE_1__* host; int supported_events; struct request_queue* request_queue; } ;
struct request_queue {int bounce_gfp; } ;
struct ata_device {int flags; scalar_t__ class; struct scsi_device* sdev; int id; int max_sectors; } ;
struct TYPE_2__ {scalar_t__ can_queue; } ;


 int ATAPI_MAX_DRAIN ;
 scalar_t__ ATA_DEV_ATAPI ;
 int ATA_DFLAG_AN ;
 int ATA_DFLAG_NCQ ;
 int ATA_DFLAG_NO_UNLOAD ;
 scalar_t__ ATA_DMA_PAD_SZ ;
 scalar_t__ ATA_MAX_QUEUE ;
 scalar_t__ ATA_SECT_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int KERN_WARNING ;
 int MSG_SIMPLE_TAG ;
 scalar_t__ PAGE_SIZE ;
 int SDEV_EVT_MEDIA_CHANGE ;
 int ata_dev_printk (struct ata_device*,int ,char*,...) ;
 int ata_id_has_unload (int ) ;
 scalar_t__ ata_id_logical_sector_size (int ) ;
 int ata_id_queue_depth (int ) ;
 int atapi_drain_needed ;
 int blk_queue_dma_drain (struct request_queue*,int ,void*,int ) ;
 int blk_queue_flush_queueable (struct request_queue*,int) ;
 int blk_queue_max_hw_sectors (struct request_queue*,int ) ;
 int blk_queue_update_dma_alignment (struct request_queue*,scalar_t__) ;
 int blk_queue_update_dma_pad (struct request_queue*,scalar_t__) ;
 void* kmalloc (int ,int) ;
 int min (scalar_t__,int) ;
 int scsi_adjust_queue_depth (struct scsi_device*,int ,int) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int ata_scsi_dev_config(struct scsi_device *sdev,
          struct ata_device *dev)
{
 struct request_queue *q = sdev->request_queue;

 if (!ata_id_has_unload(dev->id))
  dev->flags |= ATA_DFLAG_NO_UNLOAD;


 blk_queue_max_hw_sectors(q, dev->max_sectors);

 if (dev->class == ATA_DEV_ATAPI) {
  void *buf;

  sdev->sector_size = ATA_SECT_SIZE;


  blk_queue_update_dma_pad(q, ATA_DMA_PAD_SZ - 1);


  buf = kmalloc(ATAPI_MAX_DRAIN, q->bounce_gfp | GFP_KERNEL);
  if (!buf) {
   ata_dev_printk(dev, KERN_ERR,
           "drain buffer allocation failed\n");
   return -ENOMEM;
  }

  blk_queue_dma_drain(q, atapi_drain_needed, buf, ATAPI_MAX_DRAIN);
 } else {
  sdev->sector_size = ata_id_logical_sector_size(dev->id);
  sdev->manage_start_stop = 1;
 }
 if (sdev->sector_size > PAGE_SIZE)
  ata_dev_printk(dev, KERN_WARNING,
   "sector_size=%u > PAGE_SIZE, PIO may malfunction\n",
   sdev->sector_size);

 blk_queue_update_dma_alignment(q, sdev->sector_size - 1);

 if (dev->flags & ATA_DFLAG_AN)
  set_bit(SDEV_EVT_MEDIA_CHANGE, sdev->supported_events);

 if (dev->flags & ATA_DFLAG_NCQ) {
  int depth;

  depth = min(sdev->host->can_queue, ata_id_queue_depth(dev->id));
  depth = min(ATA_MAX_QUEUE - 1, depth);
  scsi_adjust_queue_depth(sdev, MSG_SIMPLE_TAG, depth);
 }

 blk_queue_flush_queueable(q, 0);

 dev->sdev = sdev;
 return 0;
}
