
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int vp_idx; int dpc_flags; int loop_down_timer; int loop_state; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 int ABORT_ISP_ACTIVE ;
 scalar_t__ LOOP_DOWN ;
 scalar_t__ LOOP_DOWN_TIME ;
 int VCE_COMMAND_DISABLE_VPS_LOGO_ALL ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,scalar_t__) ;
 int ql_dbg (int ,TYPE_1__*,int,char*,int ) ;
 int ql_dbg_taskm ;
 int qla24xx_control_vp (TYPE_1__*,int ) ;
 int qla24xx_enable_vp (TYPE_1__*) ;
 int qla2x00_mark_all_devices_lost (TYPE_1__*,int ) ;
 int test_bit (int ,int *) ;

int
qla2x00_vp_abort_isp(scsi_qla_host_t *vha)
{




 if (atomic_read(&vha->loop_state) != LOOP_DOWN) {
  atomic_set(&vha->loop_state, LOOP_DOWN);
  qla2x00_mark_all_devices_lost(vha, 0);
 } else {
  if (!atomic_read(&vha->loop_down_timer))
   atomic_set(&vha->loop_down_timer, LOOP_DOWN_TIME);
 }






 if (!test_bit(ABORT_ISP_ACTIVE, &vha->dpc_flags))
  qla24xx_control_vp(vha, VCE_COMMAND_DISABLE_VPS_LOGO_ALL);

 ql_dbg(ql_dbg_taskm, vha, 0x801d,
     "Scheduling enable of Vport %d.\n", vha->vp_idx);
 return qla24xx_enable_vp(vha);
}
