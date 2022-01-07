
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct qla_hw_data {int dummy; } ;
struct TYPE_7__ {int ref_count; TYPE_1__* fcport; } ;
typedef TYPE_2__ srb_t ;
struct TYPE_6__ {int vha; } ;


 int BUG () ;
 struct scsi_cmnd* GET_CMD_SP (TYPE_2__*) ;
 int atomic_dec_and_test (int *) ;
 scalar_t__ atomic_read (int *) ;
 int ql2xextended_error_logging ;
 int ql_dbg (int,int ,int,char*,TYPE_2__*,struct scsi_cmnd*) ;
 int ql_dbg_io ;
 int qla2x00_sp_free_dma (struct qla_hw_data*,TYPE_2__*) ;
 int stub1 (struct scsi_cmnd*) ;

void
qla2x00_sp_compl(void *data, void *ptr, int res)
{
 struct qla_hw_data *ha = (struct qla_hw_data *)data;
 srb_t *sp = (srb_t*)ptr;
 struct scsi_cmnd *cmd = GET_CMD_SP(sp);

 cmd->result = res;

 if (atomic_read(&sp->ref_count) == 0) {
  ql_dbg(ql_dbg_io, sp->fcport->vha, 0x3015,
      "SP reference-count to ZERO -- sp=%p cmd=%p.\n",
      sp, GET_CMD_SP(sp));
  if (ql2xextended_error_logging & ql_dbg_io)
   BUG();
  return;
 }
 if (!atomic_dec_and_test(&sp->ref_count))
  return;

 qla2x00_sp_free_dma(ha, sp);
 cmd->scsi_done(cmd);
}
