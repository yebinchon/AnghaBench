
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct request {scalar_t__ cmd_type; int errors; struct ide_cmd* special; } ;
struct ide_cmd {int dummy; } ;
typedef int ide_startstop_t ;
struct TYPE_10__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_9__ {struct request* rq; } ;


 int EIO ;
 scalar_t__ REQ_TYPE_ATA_TASKFILE ;
 scalar_t__ REQ_TYPE_FS ;
 int __ide_error (TYPE_2__*,struct request*,int,int) ;
 scalar_t__ blk_pm_request (struct request*) ;
 int blk_rq_bytes (struct request*) ;
 int ide_complete_cmd (TYPE_2__*,struct ide_cmd*,int,int) ;
 int ide_complete_pm_rq (TYPE_2__*,struct request*) ;
 int ide_complete_rq (TYPE_2__*,int ,int ) ;
 int ide_dump_status (TYPE_2__*,char const*,int) ;
 int ide_stopped ;

ide_startstop_t ide_error(ide_drive_t *drive, const char *msg, u8 stat)
{
 struct request *rq;
 u8 err;

 err = ide_dump_status(drive, msg, stat);

 rq = drive->hwif->rq;
 if (rq == ((void*)0))
  return ide_stopped;


 if (rq->cmd_type != REQ_TYPE_FS) {
  if (rq->cmd_type == REQ_TYPE_ATA_TASKFILE) {
   struct ide_cmd *cmd = rq->special;

   if (cmd)
    ide_complete_cmd(drive, cmd, stat, err);
  } else if (blk_pm_request(rq)) {
   rq->errors = 1;
   ide_complete_pm_rq(drive, rq);
   return ide_stopped;
  }
  rq->errors = err;
  ide_complete_rq(drive, err ? -EIO : 0, blk_rq_bytes(rq));
  return ide_stopped;
 }

 return __ide_error(drive, rq, stat, err);
}
