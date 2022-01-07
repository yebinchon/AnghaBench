
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct request {scalar_t__ cmd_type; int errors; scalar_t__ rq_disk; } ;
struct TYPE_4__ {scalar_t__ media; int * failed_pc; } ;
typedef TYPE_1__ ide_drive_t ;


 int EIO ;
 int IDE_DRV_ERROR_GENERAL ;
 scalar_t__ REQ_TYPE_FS ;
 scalar_t__ REQ_TYPE_SPECIAL ;
 int blk_rq_bytes (struct request*) ;
 int ide_complete_rq (TYPE_1__*,int ,int ) ;
 scalar_t__ ide_floppy ;
 scalar_t__ ide_tape ;

void ide_kill_rq(ide_drive_t *drive, struct request *rq)
{
 u8 drv_req = (rq->cmd_type == REQ_TYPE_SPECIAL) && rq->rq_disk;
 u8 media = drive->media;

 drive->failed_pc = ((void*)0);

 if ((media == ide_floppy || media == ide_tape) && drv_req) {
  rq->errors = 0;
 } else {
  if (media == ide_tape)
   rq->errors = IDE_DRV_ERROR_GENERAL;
  else if (rq->cmd_type != REQ_TYPE_FS && rq->errors == 0)
   rq->errors = -EIO;
 }

 ide_complete_rq(drive, -EIO, blk_rq_bytes(rq));
}
