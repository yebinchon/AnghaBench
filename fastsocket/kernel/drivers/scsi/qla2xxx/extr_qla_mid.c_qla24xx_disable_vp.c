
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ management_server_logged_in; } ;
struct TYPE_7__ {int fc_vport; TYPE_1__ flags; int vp_state; int loop_down_timer; int loop_state; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int FC_VPORT_DISABLED ;
 int FC_VPORT_FAILED ;
 int LOOP_DOWN ;
 int LOOP_DOWN_TIME ;
 int QLA_SUCCESS ;
 int VCE_COMMAND_DISABLE_VPS_LOGO_ALL ;
 int VP_FAILED ;
 int atomic_set (int *,int ) ;
 int fc_vport_set_state (int ,int ) ;
 int qla24xx_control_vp (TYPE_2__*,int ) ;
 int qla2x00_mark_vp_devices_dead (TYPE_2__*) ;

int
qla24xx_disable_vp(scsi_qla_host_t *vha)
{
 int ret;

 ret = qla24xx_control_vp(vha, VCE_COMMAND_DISABLE_VPS_LOGO_ALL);
 atomic_set(&vha->loop_state, LOOP_DOWN);
 atomic_set(&vha->loop_down_timer, LOOP_DOWN_TIME);

 qla2x00_mark_vp_devices_dead(vha);
 atomic_set(&vha->vp_state, VP_FAILED);
 vha->flags.management_server_logged_in = 0;
 if (ret == QLA_SUCCESS) {
  fc_vport_set_state(vha->fc_vport, FC_VPORT_DISABLED);
 } else {
  fc_vport_set_state(vha->fc_vport, FC_VPORT_FAILED);
  return -1;
 }
 return 0;
}
