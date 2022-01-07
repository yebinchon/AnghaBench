
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request_queue {int (* prep_rq_fn ) (struct request_queue*,struct request*) ;} ;
struct request {int timeout; int cmd_flags; int * cmd; } ;
struct TYPE_4__ {int media_written; } ;
struct cdrom_info {TYPE_1__ devinfo; int disk; } ;
typedef int ide_startstop_t ;
struct TYPE_5__ {int dma; int dev_flags; struct request_queue* queue; struct cdrom_info* driver_data; } ;
typedef TYPE_2__ ide_drive_t ;


 int ATAPI_WAIT_PC ;
 int IDE_DBG_RQ ;
 int IDE_DFLAG_USING_DMA ;
 unsigned short SECTOR_BITS ;
 scalar_t__ WRITE ;
 unsigned short blk_rq_pos (struct request*) ;
 unsigned short blk_rq_sectors (struct request*) ;
 scalar_t__ get_disk_ro (int ) ;
 int ide_debug_log (int ,char*,int ,int ,unsigned short) ;
 int ide_started ;
 int ide_stopped ;
 unsigned short queue_logical_block_size (struct request_queue*) ;
 scalar_t__ rq_data_dir (struct request*) ;
 int stub1 (struct request_queue*,struct request*) ;

__attribute__((used)) static ide_startstop_t cdrom_start_rw(ide_drive_t *drive, struct request *rq)
{
 struct cdrom_info *cd = drive->driver_data;
 struct request_queue *q = drive->queue;
 int write = rq_data_dir(rq) == WRITE;
 unsigned short sectors_per_frame =
  queue_logical_block_size(q) >> SECTOR_BITS;

 ide_debug_log(IDE_DBG_RQ, "rq->cmd[0]: 0x%x, rq->cmd_flags: 0x%x, "
      "secs_per_frame: %u",
      rq->cmd[0], rq->cmd_flags, sectors_per_frame);

 if (write) {

  if (get_disk_ro(cd->disk))
   return ide_stopped;
 } else {




  q->prep_rq_fn(q, rq);
 }


 if ((blk_rq_sectors(rq) & (sectors_per_frame - 1)) ||
     (blk_rq_pos(rq) & (sectors_per_frame - 1)))
  return ide_stopped;


 drive->dma = !!(drive->dev_flags & IDE_DFLAG_USING_DMA);

 if (write)
  cd->devinfo.media_written = 1;

 rq->timeout = ATAPI_WAIT_PC;

 return ide_started;
}
