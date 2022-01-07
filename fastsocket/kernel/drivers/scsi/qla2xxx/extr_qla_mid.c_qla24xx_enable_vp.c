
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct qla_hw_data {int current_topology; int vport_lock; int pdev; } ;
struct TYPE_6__ {int vp_idx; int fc_vport; int vp_err_state; int loop_state; struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int FC_VPORT_FAILED ;
 int FC_VPORT_LINKDOWN ;
 int ISP_CFG_F ;
 scalar_t__ LOOP_DEAD ;
 scalar_t__ LOOP_DOWN ;
 int QLA_SUCCESS ;
 int VP_ERR_PORTDWN ;
 scalar_t__ atomic_read (int *) ;
 int fc_vport_set_state (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* pci_get_drvdata (int ) ;
 int ql_dbg (int ,TYPE_1__*,int,char*,int ) ;
 int ql_dbg_taskm ;
 int qla24xx_modify_vp_config (TYPE_1__*) ;

int
qla24xx_enable_vp(scsi_qla_host_t *vha)
{
 int ret;
 struct qla_hw_data *ha = vha->hw;
 scsi_qla_host_t *base_vha = pci_get_drvdata(ha->pdev);


 if (atomic_read(&base_vha->loop_state) == LOOP_DOWN ||
  atomic_read(&base_vha->loop_state) == LOOP_DEAD ||
  !(ha->current_topology & ISP_CFG_F)) {
  vha->vp_err_state = VP_ERR_PORTDWN;
  fc_vport_set_state(vha->fc_vport, FC_VPORT_LINKDOWN);
  goto enable_failed;
 }


 mutex_lock(&ha->vport_lock);
 ret = qla24xx_modify_vp_config(vha);
 mutex_unlock(&ha->vport_lock);

 if (ret != QLA_SUCCESS) {
  fc_vport_set_state(vha->fc_vport, FC_VPORT_FAILED);
  goto enable_failed;
 }

 ql_dbg(ql_dbg_taskm, vha, 0x801a,
     "Virtual port with id: %d - Enabled.\n", vha->vp_idx);
 return 0;

enable_failed:
 ql_dbg(ql_dbg_taskm, vha, 0x801b,
     "Virtual port with id: %d - Disabled.\n", vha->vp_idx);
 return 1;
}
