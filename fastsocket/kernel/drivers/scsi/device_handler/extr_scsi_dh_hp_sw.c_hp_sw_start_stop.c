
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int cmd_flags; int* cmd; int q; struct hp_sw_dh_data* end_io_data; scalar_t__ sense_len; int sense; int timeout; int cmd_len; int cmd_type; } ;
struct hp_sw_dh_data {int sense; TYPE_1__* sdev; } ;
struct TYPE_2__ {int request_queue; } ;


 int COMMAND_SIZE (int) ;
 int GFP_ATOMIC ;
 int HP_SW_TIMEOUT ;
 int REQ_FAILFAST_DEV ;
 int REQ_FAILFAST_DRIVER ;
 int REQ_FAILFAST_TRANSPORT ;
 int REQ_TYPE_BLOCK_PC ;
 int SCSI_DH_OK ;
 int SCSI_DH_RES_TEMP_UNAVAIL ;
 int SCSI_SENSE_BUFFERSIZE ;
 int START_STOP ;
 int WRITE ;
 int blk_execute_rq_nowait (int ,int *,struct request*,int,int ) ;
 struct request* blk_get_request (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int start_stop_endio ;

__attribute__((used)) static int hp_sw_start_stop(struct hp_sw_dh_data *h)
{
 struct request *req;

 req = blk_get_request(h->sdev->request_queue, WRITE, GFP_ATOMIC);
 if (!req)
  return SCSI_DH_RES_TEMP_UNAVAIL;

 req->cmd_type = REQ_TYPE_BLOCK_PC;
 req->cmd_flags |= REQ_FAILFAST_DEV | REQ_FAILFAST_TRANSPORT |
     REQ_FAILFAST_DRIVER;
 req->cmd_len = COMMAND_SIZE(START_STOP);
 req->cmd[0] = START_STOP;
 req->cmd[4] = 1;
 req->timeout = HP_SW_TIMEOUT;
 req->sense = h->sense;
 memset(req->sense, 0, SCSI_SENSE_BUFFERSIZE);
 req->sense_len = 0;
 req->end_io_data = h;

 blk_execute_rq_nowait(req->q, ((void*)0), req, 1, start_stop_endio);
 return SCSI_DH_OK;
}
