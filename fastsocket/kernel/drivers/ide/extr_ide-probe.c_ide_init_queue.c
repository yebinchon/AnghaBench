
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct request_queue {TYPE_2__* queuedata; } ;
struct TYPE_6__ {int rqsize; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_7__ {struct request_queue* queue; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int PCI_DMA_BUS_IS_PHYS ;
 int PRD_ENTRIES ;
 struct request_queue* blk_init_queue_node (int ,int *,int ) ;
 int blk_queue_max_hw_sectors (struct request_queue*,int) ;
 int blk_queue_max_segments (struct request_queue*,int) ;
 int blk_queue_segment_boundary (struct request_queue*,int) ;
 int do_ide_request ;
 int hwif_to_node (TYPE_1__*) ;
 int ide_toggle_bounce (TYPE_2__*,int) ;

__attribute__((used)) static int ide_init_queue(ide_drive_t *drive)
{
 struct request_queue *q;
 ide_hwif_t *hwif = drive->hwif;
 int max_sectors = 256;
 int max_sg_entries = PRD_ENTRIES;
 q = blk_init_queue_node(do_ide_request, ((void*)0), hwif_to_node(hwif));
 if (!q)
  return 1;

 q->queuedata = drive;
 blk_queue_segment_boundary(q, 0xffff);

 if (hwif->rqsize < max_sectors)
  max_sectors = hwif->rqsize;
 blk_queue_max_hw_sectors(q, max_sectors);
 blk_queue_max_segments(q, max_sg_entries);


 drive->queue = q;


 ide_toggle_bounce(drive, 1);

 return 0;
}
