
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct request {scalar_t__ cmd_type; scalar_t__* cmd; int errors; } ;
struct TYPE_6__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_5__ {struct request* rq; } ;


 int EIO ;
 scalar_t__ REQ_DRIVE_RESET ;
 scalar_t__ REQ_TYPE_SPECIAL ;
 int blk_rq_bytes (struct request*) ;
 int ide_complete_rq (TYPE_2__*,int,int ) ;

__attribute__((used)) static inline void ide_complete_drive_reset(ide_drive_t *drive, int err)
{
 struct request *rq = drive->hwif->rq;

 if (rq && rq->cmd_type == REQ_TYPE_SPECIAL &&
     rq->cmd[0] == REQ_DRIVE_RESET) {
  if (err <= 0 && rq->errors == 0)
   rq->errors = -EIO;
  ide_complete_rq(drive, err ? err : 0, blk_rq_bytes(rq));
 }
}
