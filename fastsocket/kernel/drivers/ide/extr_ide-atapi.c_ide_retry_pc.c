
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct request {int q; int cmd; } ;
struct ide_atapi_pc {int c; } ;
struct TYPE_8__ {scalar_t__ media; TYPE_1__* hwif; int atapi_flags; struct ide_atapi_pc request_sense_pc; struct request sense_rq; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_7__ {struct request* rq; } ;


 int EIO ;
 int IDE_AFLAG_IGNORE_DSC ;
 int blk_requeue_request (int ,struct request*) ;
 int blk_rq_bytes (struct request*) ;
 int blk_start_request (struct request*) ;
 int ide_complete_rq (TYPE_2__*,int ,int ) ;
 int ide_init_pc (struct ide_atapi_pc*) ;
 scalar_t__ ide_queue_sense_rq (TYPE_2__*,struct ide_atapi_pc*) ;
 int ide_read_error (TYPE_2__*) ;
 scalar_t__ ide_tape ;
 int memcpy (int ,int ,int) ;

void ide_retry_pc(ide_drive_t *drive)
{
 struct request *failed_rq = drive->hwif->rq;
 struct request *sense_rq = &drive->sense_rq;
 struct ide_atapi_pc *pc = &drive->request_sense_pc;

 (void)ide_read_error(drive);


 ide_init_pc(pc);
 memcpy(pc->c, sense_rq->cmd, 12);

 if (drive->media == ide_tape)
  drive->atapi_flags |= IDE_AFLAG_IGNORE_DSC;






 blk_requeue_request(failed_rq->q, failed_rq);
 drive->hwif->rq = ((void*)0);
 if (ide_queue_sense_rq(drive, pc)) {
  blk_start_request(failed_rq);
  ide_complete_rq(drive, -EIO, blk_rq_bytes(failed_rq));
 }
}
