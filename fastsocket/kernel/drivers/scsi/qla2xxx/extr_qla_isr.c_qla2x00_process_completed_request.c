
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct scsi_qla_host {int dpc_flags; struct qla_hw_data* hw; } ;
struct req_que {size_t num_outstanding_cmds; TYPE_1__** outstanding_cmds; } ;
struct qla_hw_data {int dummy; } ;
struct TYPE_3__ {int (* done ) (struct qla_hw_data*,TYPE_1__*,int) ;} ;
typedef TYPE_1__ srb_t ;


 int DID_OK ;
 int FCOE_CTX_RESET_NEEDED ;
 int ISP_ABORT_NEEDED ;
 scalar_t__ IS_QLA82XX (struct qla_hw_data*) ;
 int ql_log (int ,struct scsi_qla_host*,int,char*,...) ;
 int ql_log_warn ;
 int set_bit (int ,int *) ;
 int stub1 (struct qla_hw_data*,TYPE_1__*,int) ;

void
qla2x00_process_completed_request(struct scsi_qla_host *vha,
      struct req_que *req, uint32_t index)
{
 srb_t *sp;
 struct qla_hw_data *ha = vha->hw;


 if (index >= req->num_outstanding_cmds) {
  ql_log(ql_log_warn, vha, 0x3014,
      "Invalid SCSI command index (%x).\n", index);

  if (IS_QLA82XX(ha))
   set_bit(FCOE_CTX_RESET_NEEDED, &vha->dpc_flags);
  else
   set_bit(ISP_ABORT_NEEDED, &vha->dpc_flags);
  return;
 }

 sp = req->outstanding_cmds[index];
 if (sp) {

  req->outstanding_cmds[index] = ((void*)0);


  sp->done(ha, sp, DID_OK << 16);
 } else {
  ql_log(ql_log_warn, vha, 0x3016, "Invalid SCSI SRB.\n");

  if (IS_QLA82XX(ha))
   set_bit(FCOE_CTX_RESET_NEEDED, &vha->dpc_flags);
  else
   set_bit(ISP_ABORT_NEEDED, &vha->dpc_flags);
 }
}
