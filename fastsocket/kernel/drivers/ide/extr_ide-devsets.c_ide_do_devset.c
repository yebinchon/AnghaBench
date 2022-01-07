
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int (* special ) (int *,int) ;int errors; int * cmd; } ;
typedef int ide_startstop_t ;
typedef int ide_drive_t ;


 int blk_rq_bytes (struct request*) ;
 int ide_complete_rq (int *,int,int ) ;
 int ide_stopped ;

ide_startstop_t ide_do_devset(ide_drive_t *drive, struct request *rq)
{
 int err, (*setfunc)(ide_drive_t *, int) = rq->special;

 err = setfunc(drive, *(int *)&rq->cmd[1]);
 if (err)
  rq->errors = err;
 ide_complete_rq(drive, err, blk_rq_bytes(rq));
 return ide_stopped;
}
