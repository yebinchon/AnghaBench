
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct request {char* special; int * cmd; int cmd_type; } ;
struct ide_atapi_pc {int c; } ;
struct gendisk {int dummy; } ;
struct TYPE_3__ {scalar_t__ media; int queue; } ;
typedef TYPE_1__ ide_drive_t ;


 int GFP_NOIO ;
 int READ ;
 int REQ_IDETAPE_PC1 ;
 int REQ_TYPE_SPECIAL ;
 int __GFP_WAIT ;
 int blk_execute_rq (int ,struct gendisk*,struct request*,int ) ;
 struct request* blk_get_request (int ,int ,int ) ;
 int blk_put_request (struct request*) ;
 int blk_rq_map_kern (int ,struct request*,void*,unsigned int,int ) ;
 scalar_t__ ide_tape ;
 int memcpy (int *,int ,int) ;

int ide_queue_pc_tail(ide_drive_t *drive, struct gendisk *disk,
        struct ide_atapi_pc *pc, void *buf, unsigned int bufflen)
{
 struct request *rq;
 int error;

 rq = blk_get_request(drive->queue, READ, __GFP_WAIT);
 rq->cmd_type = REQ_TYPE_SPECIAL;
 rq->special = (char *)pc;

 if (buf && bufflen) {
  error = blk_rq_map_kern(drive->queue, rq, buf, bufflen,
     GFP_NOIO);
  if (error)
   goto put_req;
 }

 memcpy(rq->cmd, pc->c, 12);
 if (drive->media == ide_tape)
  rq->cmd[13] = REQ_IDETAPE_PC1;
 error = blk_execute_rq(drive->queue, disk, rq, 0);
put_req:
 blk_put_request(rq);
 return error;
}
