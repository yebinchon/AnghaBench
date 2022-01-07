
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct request {struct ide_cmd* special; int cmd_type; } ;
struct ide_cmd {int tf_flags; struct request* rq; } ;
struct TYPE_3__ {int queue; } ;
typedef TYPE_1__ ide_drive_t ;


 int IDE_TFLAG_WRITE ;
 int READ ;
 int REQ_TYPE_ATA_TASKFILE ;
 int SECTOR_SIZE ;
 int WRITE ;
 int __GFP_WAIT ;
 int blk_execute_rq (int ,int *,struct request*,int ) ;
 struct request* blk_get_request (int ,int,int ) ;
 int blk_put_request (struct request*) ;
 int blk_rq_map_kern (int ,struct request*,int *,int,int ) ;

int ide_raw_taskfile(ide_drive_t *drive, struct ide_cmd *cmd, u8 *buf,
       u16 nsect)
{
 struct request *rq;
 int error;
 int rw = !(cmd->tf_flags & IDE_TFLAG_WRITE) ? READ : WRITE;

 rq = blk_get_request(drive->queue, rw, __GFP_WAIT);
 rq->cmd_type = REQ_TYPE_ATA_TASKFILE;







 if (nsect) {
  error = blk_rq_map_kern(drive->queue, rq, buf,
     nsect * SECTOR_SIZE, __GFP_WAIT);
  if (error)
   goto put_req;
 }

 rq->special = cmd;
 cmd->rq = rq;

 error = blk_execute_rq(drive->queue, ((void*)0), rq, 0);

put_req:
 blk_put_request(rq);
 return error;
}
