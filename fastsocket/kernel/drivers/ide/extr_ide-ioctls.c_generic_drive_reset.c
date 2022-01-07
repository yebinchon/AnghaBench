
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct request {int cmd_len; int errors; int * cmd; int cmd_type; } ;
struct TYPE_3__ {int queue; } ;
typedef TYPE_1__ ide_drive_t ;


 int READ ;
 int REQ_DRIVE_RESET ;
 int REQ_TYPE_SPECIAL ;
 int __GFP_WAIT ;
 scalar_t__ blk_execute_rq (int ,int *,struct request*,int) ;
 struct request* blk_get_request (int ,int ,int ) ;
 int blk_put_request (struct request*) ;

__attribute__((used)) static int generic_drive_reset(ide_drive_t *drive)
{
 struct request *rq;
 int ret = 0;

 rq = blk_get_request(drive->queue, READ, __GFP_WAIT);
 rq->cmd_type = REQ_TYPE_SPECIAL;
 rq->cmd_len = 1;
 rq->cmd[0] = REQ_DRIVE_RESET;
 if (blk_execute_rq(drive->queue, ((void*)0), rq, 1))
  ret = rq->errors;
 blk_put_request(rq);
 return ret;
}
