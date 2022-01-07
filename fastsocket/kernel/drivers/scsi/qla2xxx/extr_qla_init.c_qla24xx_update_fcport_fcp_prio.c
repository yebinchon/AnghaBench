
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_13__ {int hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;
struct TYPE_11__ {int al_pa; int area; int domain; } ;
struct TYPE_12__ {TYPE_1__ b; } ;
struct TYPE_14__ {scalar_t__ port_type; int fcp_prio; TYPE_2__ d_id; int loop_id; } ;
typedef TYPE_4__ fc_port_t ;


 scalar_t__ FCT_TARGET ;
 int FC_NO_LOOP_ID ;
 scalar_t__ IS_QLA82XX (int ) ;
 int QLA_FUNCTION_FAILED ;
 int QLA_SUCCESS ;
 int ql_dbg (int ,TYPE_3__*,int,char*,int,int ,int ,int ,int ) ;
 int ql_dbg_user ;
 int qla24xx_get_fcp_prio (TYPE_3__*,TYPE_4__*) ;
 int qla24xx_set_fcp_prio (TYPE_3__*,int ,int,int *) ;

int
qla24xx_update_fcport_fcp_prio(scsi_qla_host_t *vha, fc_port_t *fcport)
{
 int ret;
 int priority;
 uint16_t mb[5];

 if (fcport->port_type != FCT_TARGET ||
     fcport->loop_id == FC_NO_LOOP_ID)
  return QLA_FUNCTION_FAILED;

 priority = qla24xx_get_fcp_prio(vha, fcport);
 if (priority < 0)
  return QLA_FUNCTION_FAILED;

 if (IS_QLA82XX(vha->hw)) {
  fcport->fcp_prio = priority & 0xf;
  return QLA_SUCCESS;
 }

 ret = qla24xx_set_fcp_prio(vha, fcport->loop_id, priority, mb);
 if (ret == QLA_SUCCESS) {
  if (fcport->fcp_prio != priority)
   ql_dbg(ql_dbg_user, vha, 0x709e,
       "Updated FCP_CMND priority - value=%d loop_id=%d "
       "port_id=%02x%02x%02x.\n", priority,
       fcport->loop_id, fcport->d_id.b.domain,
       fcport->d_id.b.area, fcport->d_id.b.al_pa);
  fcport->fcp_prio = priority & 0xf;
 } else
  ql_dbg(ql_dbg_user, vha, 0x704f,
      "Unable to update FCP_CMND priority - ret=0x%x for "
      "loop_id=%d port_id=%02x%02x%02x.\n", ret, fcport->loop_id,
      fcport->d_id.b.domain, fcport->d_id.b.area,
      fcport->d_id.b.al_pa);

 return ret;
}
