
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct fc_port {int dummy; } ;
struct TYPE_9__ {int host_no; } ;
typedef TYPE_2__ scsi_qla_host_t ;
typedef struct fc_port fc_port_t ;
struct TYPE_8__ {unsigned int id; unsigned int lun; scalar_t__ hostdata; int host; } ;


 int FAILED ;
 scalar_t__ QLA_SUCCESS ;
 int SUCCESS ;
 int WAIT_HOST ;
 int fc_block_scsi_eh (struct scsi_cmnd*) ;
 int ql_log (int ,TYPE_2__*,int,char*,...) ;
 int ql_log_fatal ;
 int ql_log_info ;
 int ql_log_warn ;
 scalar_t__ qla2x00_eh_wait_for_pending_commands (TYPE_2__*,int ,int ,int ) ;
 scalar_t__ qla2x00_loop_reset (TYPE_2__*) ;
 scalar_t__ qla2x00_wait_for_hba_online (TYPE_2__*) ;
 TYPE_2__* shost_priv (int ) ;

__attribute__((used)) static int
qla2xxx_eh_bus_reset(struct scsi_cmnd *cmd)
{
 scsi_qla_host_t *vha = shost_priv(cmd->device->host);
 fc_port_t *fcport = (struct fc_port *) cmd->device->hostdata;
 int ret = FAILED;
 unsigned int id, lun;

 id = cmd->device->id;
 lun = cmd->device->lun;

 if (!fcport) {
  return ret;
 }

 ret = fc_block_scsi_eh(cmd);
 if (ret != 0)
  return ret;
 ret = FAILED;

 ql_log(ql_log_info, vha, 0x8012,
     "BUS RESET ISSUED nexus=%ld:%d:%d.\n", vha->host_no, id, lun);

 if (qla2x00_wait_for_hba_online(vha) != QLA_SUCCESS) {
  ql_log(ql_log_fatal, vha, 0x8013,
      "Wait for hba online failed board disabled.\n");
  goto eh_bus_reset_done;
 }

 if (qla2x00_loop_reset(vha) == QLA_SUCCESS)
  ret = SUCCESS;

 if (ret == FAILED)
  goto eh_bus_reset_done;


 if (qla2x00_eh_wait_for_pending_commands(vha, 0, 0, WAIT_HOST) !=
     QLA_SUCCESS) {
  ql_log(ql_log_warn, vha, 0x8014,
      "Wait for pending commands failed.\n");
  ret = FAILED;
 }

eh_bus_reset_done:
 ql_log(ql_log_warn, vha, 0x802b,
     "BUS RESET %s nexus=%ld:%d:%d.\n",
     (ret == FAILED) ? "FAILED" : "SUCCEEDED", vha->host_no, id, lun);

 return ret;
}
