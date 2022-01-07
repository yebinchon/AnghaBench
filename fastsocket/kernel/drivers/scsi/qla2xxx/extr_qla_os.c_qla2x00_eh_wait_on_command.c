
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_7__ {scalar_t__ eeh_busy; } ;
struct qla_hw_data {TYPE_2__ flags; int pdev; } ;
struct TYPE_8__ {struct qla_hw_data* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;
struct TYPE_6__ {int host; } ;


 int ABORT_POLLING_PERIOD ;
 unsigned long ABORT_WAIT_ITER ;
 scalar_t__ CMD_SP (struct scsi_cmnd*) ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int msleep (int ) ;
 int pci_channel_offline (int ) ;
 int ql_dbg (int ,TYPE_3__*,int,char*) ;
 int ql_dbg_taskm ;
 TYPE_3__* shost_priv (int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int
qla2x00_eh_wait_on_command(struct scsi_cmnd *cmd)
{


 unsigned long wait_iter = ((10 * 1000) / (1000));
 scsi_qla_host_t *vha = shost_priv(cmd->device->host);
 struct qla_hw_data *ha = vha->hw;
 int ret = QLA_SUCCESS;

 if (unlikely(pci_channel_offline(ha->pdev)) || ha->flags.eeh_busy) {
  ql_dbg(ql_dbg_taskm, vha, 0x8005,
      "Return:eh_wait.\n");
  return ret;
 }

 while (CMD_SP(cmd) && wait_iter--) {
  msleep(1000);
 }
 if (CMD_SP(cmd))
  ret = QLA_FUNCTION_FAILED;

 return ret;
}
