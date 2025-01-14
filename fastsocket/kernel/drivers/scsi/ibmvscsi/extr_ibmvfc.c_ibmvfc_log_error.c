
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_cmnd {int * cmnd; } ;
struct ibmvfc_host {scalar_t__ log_level; } ;
struct TYPE_6__ {int rsp_code; } ;
struct TYPE_7__ {TYPE_2__ info; } ;
struct ibmvfc_fcp_rsp {int flags; int scsi_status; TYPE_3__ data; } ;
struct ibmvfc_event {struct scsi_cmnd* cmnd; struct ibmvfc_host* vhost; TYPE_1__* xfer_iu; } ;
struct ibmvfc_cmd {int error; int status; struct ibmvfc_fcp_rsp rsp; } ;
struct TYPE_8__ {int log; char* name; } ;
struct TYPE_5__ {struct ibmvfc_cmd cmd; } ;


 int FCP_RSP_LEN_VALID ;
 scalar_t__ IBMVFC_DEFAULT_LOG_LEVEL ;
 int KERN_ERR ;
 TYPE_4__* cmd_status ;
 int ibmvfc_get_err_index (int ,int ) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int ,char const*,int ,int ,int,int,int ,int ) ;
 int scsi_get_resid (struct scsi_cmnd*) ;
 char* unknown_error ;

__attribute__((used)) static void ibmvfc_log_error(struct ibmvfc_event *evt)
{
 struct ibmvfc_cmd *vfc_cmd = &evt->xfer_iu->cmd;
 struct ibmvfc_host *vhost = evt->vhost;
 struct ibmvfc_fcp_rsp *rsp = &vfc_cmd->rsp;
 struct scsi_cmnd *cmnd = evt->cmnd;
 const char *err = unknown_error;
 int index = ibmvfc_get_err_index(vfc_cmd->status, vfc_cmd->error);
 int logerr = 0;
 int rsp_code = 0;

 if (index >= 0) {
  logerr = cmd_status[index].log;
  err = cmd_status[index].name;
 }

 if (!logerr && (vhost->log_level <= (IBMVFC_DEFAULT_LOG_LEVEL + 1)))
  return;

 if (rsp->flags & FCP_RSP_LEN_VALID)
  rsp_code = rsp->data.info.rsp_code;

 scmd_printk(KERN_ERR, cmnd, "Command (%02X) failed: %s (%x:%x) "
      "flags: %x fcp_rsp: %x, resid=%d, scsi_status: %x\n",
      cmnd->cmnd[0], err, vfc_cmd->status, vfc_cmd->error,
      rsp->flags, rsp_code, scsi_get_resid(cmnd), rsp->scsi_status);
}
