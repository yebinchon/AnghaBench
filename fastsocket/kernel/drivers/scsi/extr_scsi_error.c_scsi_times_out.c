
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_cmnd {int result; TYPE_4__* device; } ;
struct request {struct scsi_cmnd* special; } ;
typedef enum blk_eh_timer_return { ____Placeholder_blk_eh_timer_return } blk_eh_timer_return ;
struct TYPE_8__ {TYPE_3__* host; } ;
struct TYPE_7__ {TYPE_2__* hostt; TYPE_1__* transportt; } ;
struct TYPE_6__ {int (* eh_timed_out ) (struct scsi_cmnd*) ;} ;
struct TYPE_5__ {int (* eh_timed_out ) (struct scsi_cmnd*) ;} ;


 int BLK_EH_HANDLED ;
 int BLK_EH_NOT_HANDLED ;
 int DID_TIME_OUT ;
 int SCSI_EH_CANCEL_CMD ;
 int TIMEOUT_ERROR ;
 int scsi_eh_scmd_add (struct scsi_cmnd*,int ) ;
 int scsi_log_completion (struct scsi_cmnd*,int ) ;
 int stub1 (struct scsi_cmnd*) ;
 int stub2 (struct scsi_cmnd*) ;
 int trace_scsi_dispatch_cmd_timeout (struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;

enum blk_eh_timer_return scsi_times_out(struct request *req)
{
 struct scsi_cmnd *scmd = req->special;
 enum blk_eh_timer_return rtn = BLK_EH_NOT_HANDLED;

 trace_scsi_dispatch_cmd_timeout(scmd);
 scsi_log_completion(scmd, TIMEOUT_ERROR);

 if (scmd->device->host->transportt->eh_timed_out)
  rtn = scmd->device->host->transportt->eh_timed_out(scmd);
 else if (scmd->device->host->hostt->eh_timed_out)
  rtn = scmd->device->host->hostt->eh_timed_out(scmd);

 if (unlikely(rtn == BLK_EH_NOT_HANDLED &&
       !scsi_eh_scmd_add(scmd, SCSI_EH_CANCEL_CMD))) {
  scmd->result |= DID_TIME_OUT << 16;
  rtn = BLK_EH_HANDLED;
 }

 return rtn;
}
