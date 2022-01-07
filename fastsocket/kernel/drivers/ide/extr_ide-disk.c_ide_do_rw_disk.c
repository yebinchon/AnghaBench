
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct request {scalar_t__ cmd_type; scalar_t__ buffer; } ;
typedef scalar_t__ sector_t ;
typedef int ide_startstop_t ;
struct TYPE_6__ {int (* rw_disk ) (TYPE_2__*,struct request*) ;} ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_7__ {int dev_flags; int name; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int BUG_ON (int) ;
 int IDE_DFLAG_BLOCKED ;
 scalar_t__ READ ;
 scalar_t__ REQ_TYPE_FS ;
 int __ide_do_rw_disk (TYPE_2__*,struct request*,scalar_t__) ;
 int blk_rq_sectors (struct request*) ;
 int ledtrig_ide_activity () ;
 int pr_debug (char*,int ,char*,unsigned long long,int ,unsigned long) ;
 scalar_t__ rq_data_dir (struct request*) ;
 int stub1 (TYPE_2__*,struct request*) ;

__attribute__((used)) static ide_startstop_t ide_do_rw_disk(ide_drive_t *drive, struct request *rq,
          sector_t block)
{
 ide_hwif_t *hwif = drive->hwif;

 BUG_ON(drive->dev_flags & IDE_DFLAG_BLOCKED);
 BUG_ON(rq->cmd_type != REQ_TYPE_FS);

 ledtrig_ide_activity();

 pr_debug("%s: %sing: block=%llu, sectors=%u, buffer=0x%08lx\n",
   drive->name, rq_data_dir(rq) == READ ? "read" : "writ",
   (unsigned long long)block, blk_rq_sectors(rq),
   (unsigned long)rq->buffer);

 if (hwif->rw_disk)
  hwif->rw_disk(drive, rq);

 return __ide_do_rw_disk(drive, rq, block);
}
