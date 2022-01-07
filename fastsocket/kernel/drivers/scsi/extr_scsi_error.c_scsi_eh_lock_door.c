
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int request_queue; } ;
struct request {int timeout; int retries; int q; int cmd_flags; int cmd_type; scalar_t__* cmd; int cmd_len; } ;


 scalar_t__ ALLOW_MEDIUM_REMOVAL ;
 int COMMAND_SIZE (scalar_t__) ;
 int GFP_KERNEL ;
 int HZ ;
 int READ ;
 int REQ_QUIET ;
 int REQ_TYPE_BLOCK_PC ;
 scalar_t__ SCSI_REMOVAL_PREVENT ;
 int blk_execute_rq_nowait (int ,int *,struct request*,int,int ) ;
 struct request* blk_get_request (int ,int ,int ) ;
 int eh_lock_door_done ;

__attribute__((used)) static void scsi_eh_lock_door(struct scsi_device *sdev)
{
 struct request *req;





 req = blk_get_request(sdev->request_queue, READ, GFP_KERNEL);

 req->cmd[0] = ALLOW_MEDIUM_REMOVAL;
 req->cmd[1] = 0;
 req->cmd[2] = 0;
 req->cmd[3] = 0;
 req->cmd[4] = SCSI_REMOVAL_PREVENT;
 req->cmd[5] = 0;

 req->cmd_len = COMMAND_SIZE(req->cmd[0]);

 req->cmd_type = REQ_TYPE_BLOCK_PC;
 req->cmd_flags |= REQ_QUIET;
 req->timeout = 10 * HZ;
 req->retries = 5;

 blk_execute_rq_nowait(req->q, ((void*)0), req, 1, eh_lock_door_done);
}
