
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct zfcp_fsf_req {int status; TYPE_5__* adapter; TYPE_4__* qtcb; struct scsi_cmnd* data; } ;
struct scsi_cmnd {scalar_t__ result; scalar_t__ retries; int (* scsi_done ) (struct scsi_cmnd*) ;int * host_scribble; } ;
struct fcp_resp_with_ext {int dummy; } ;
struct TYPE_10__ {int adapter_features; int abort_lock; int dbf; } ;
struct TYPE_7__ {int fcp_rsp; } ;
struct TYPE_8__ {TYPE_2__ io; } ;
struct TYPE_6__ {int fsf_status; } ;
struct TYPE_9__ {TYPE_3__ bottom; TYPE_1__ header; } ;


 int DID_ERROR ;
 int DID_TRANSPORT_DISRUPTED ;


 int FSF_FEATURE_MEASUREMENT_DATA ;



 int ZFCP_STATUS_FSFREQ_ERROR ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 int set_host_byte (struct scsi_cmnd*,int ) ;
 int stub1 (struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;
 int zfcp_dbf_scsi_result (char*,int,int ,struct scsi_cmnd*,struct zfcp_fsf_req*) ;
 int zfcp_fc_eval_fcp_rsp (struct fcp_resp_with_ext*,struct scsi_cmnd*) ;
 int zfcp_fsf_req_latency (struct zfcp_fsf_req*) ;
 int zfcp_fsf_trace_latency (struct zfcp_fsf_req*) ;
 int zfcp_scsi_dif_sense_error (struct scsi_cmnd*,int) ;

__attribute__((used)) static void zfcp_fsf_send_fcp_command_task_handler(struct zfcp_fsf_req *req)
{
 struct scsi_cmnd *scpnt;
 struct fcp_resp_with_ext *fcp_rsp;
 unsigned long flags;

 read_lock_irqsave(&req->adapter->abort_lock, flags);

 scpnt = req->data;
 if (unlikely(!scpnt)) {
  read_unlock_irqrestore(&req->adapter->abort_lock, flags);
  return;
 }

 if (unlikely(req->status & ZFCP_STATUS_FSFREQ_ERROR)) {
  set_host_byte(scpnt, DID_TRANSPORT_DISRUPTED);
  goto skip_fsfstatus;
 }

 switch (req->qtcb->header.fsf_status) {
 case 130:
 case 129:
  set_host_byte(scpnt, DID_ERROR);
  goto skip_fsfstatus;
 case 131:
  zfcp_scsi_dif_sense_error(scpnt, 0x1);
  goto skip_fsfstatus;
 case 132:
  zfcp_scsi_dif_sense_error(scpnt, 0x2);
  goto skip_fsfstatus;
 case 128:
  zfcp_scsi_dif_sense_error(scpnt, 0x3);
  goto skip_fsfstatus;
 }
 fcp_rsp = (struct fcp_resp_with_ext *) &req->qtcb->bottom.io.fcp_rsp;
 zfcp_fc_eval_fcp_rsp(fcp_rsp, scpnt);

 if (req->adapter->adapter_features & FSF_FEATURE_MEASUREMENT_DATA)
  zfcp_fsf_req_latency(req);

 zfcp_fsf_trace_latency(req);

skip_fsfstatus:
 if (scpnt->result != 0)
  zfcp_dbf_scsi_result("erro", 3, req->adapter->dbf, scpnt, req);
 else if (scpnt->retries > 0)
  zfcp_dbf_scsi_result("retr", 4, req->adapter->dbf, scpnt, req);
 else
  zfcp_dbf_scsi_result("norm", 6, req->adapter->dbf, scpnt, req);

 scpnt->host_scribble = ((void*)0);
 (scpnt->scsi_done) (scpnt);






 read_unlock_irqrestore(&req->adapter->abort_lock, flags);
}
