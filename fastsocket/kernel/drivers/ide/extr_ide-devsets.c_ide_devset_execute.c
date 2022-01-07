
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {int cmd_len; int (* special ) (TYPE_1__*,int) ;int errors; int * cmd; int cmd_type; } ;
struct ide_devset {int flags; int (* set ) (TYPE_1__*,int) ;} ;
struct TYPE_4__ {struct request_queue* queue; } ;
typedef TYPE_1__ ide_drive_t ;


 int DS_SYNC ;
 int READ ;
 int REQ_DEVSET_EXEC ;
 int REQ_TYPE_SPECIAL ;
 int __GFP_WAIT ;
 scalar_t__ blk_execute_rq (struct request_queue*,int *,struct request*,int ) ;
 struct request* blk_get_request (struct request_queue*,int ,int ) ;
 int blk_put_request (struct request*) ;
 int stub1 (TYPE_1__*,int) ;

int ide_devset_execute(ide_drive_t *drive, const struct ide_devset *setting,
         int arg)
{
 struct request_queue *q = drive->queue;
 struct request *rq;
 int ret = 0;

 if (!(setting->flags & DS_SYNC))
  return setting->set(drive, arg);

 rq = blk_get_request(q, READ, __GFP_WAIT);
 rq->cmd_type = REQ_TYPE_SPECIAL;
 rq->cmd_len = 5;
 rq->cmd[0] = REQ_DEVSET_EXEC;
 *(int *)&rq->cmd[1] = arg;
 rq->special = setting->set;

 if (blk_execute_rq(q, ((void*)0), rq, 0))
  ret = rq->errors;
 blk_put_request(rq);

 return ret;
}
