
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int uint16_t ;
struct qla_hw_data {TYPE_1__* isp_ops; } ;
struct TYPE_20__ {struct qla_hw_data* hw; } ;
typedef TYPE_4__ scsi_qla_host_t ;
struct TYPE_18__ {int al_pa; int area; int domain; } ;
struct TYPE_19__ {TYPE_2__ b; } ;
struct TYPE_21__ {int loop_id; scalar_t__ login_retry; TYPE_3__ d_id; int supported_classes; int flags; int port_type; } ;
typedef TYPE_5__ fc_port_t ;
struct TYPE_17__ {int (* fabric_login ) (TYPE_4__*,int,int ,int ,int ,int*,int) ;int (* fabric_logout ) (TYPE_4__*,int,int ,int ,int ) ;} ;


 int BIT_0 ;
 int BIT_1 ;
 int FCF_FCP2_DEVICE ;
 int FCT_INITIATOR ;
 int FCT_TARGET ;
 int FC_COS_CLASS2 ;
 int FC_COS_CLASS3 ;
 int MAILBOX_REGISTER_COUNT ;
 int MBS_COMMAND_COMPLETE ;
 int MBS_COMMAND_ERROR ;
 int MBS_LOOP_ID_USED ;
 int MBS_PORT_ID_USED ;
 int QLA_SUCCESS ;
 int jiffies ;
 int ql_dbg (int ,TYPE_4__*,int,char*,int,int ,int ,int ,...) ;
 int ql_dbg_disc ;
 int qla2x00_clear_loop_id (TYPE_5__*) ;
 int qla2x00_find_new_loop_id (TYPE_4__*,TYPE_5__*) ;
 int qla2x00_mark_device_lost (TYPE_4__*,TYPE_5__*,int,int ) ;
 int stub1 (TYPE_4__*,int,int ,int ,int ,int*,int) ;
 int stub2 (TYPE_4__*,int,int ,int ,int ) ;
 int stub3 (TYPE_4__*,int,int ,int ,int ) ;

int
qla2x00_fabric_login(scsi_qla_host_t *vha, fc_port_t *fcport,
    uint16_t *next_loopid)
{
 int rval;
 int retry;
 uint16_t tmp_loopid;
 uint16_t mb[MAILBOX_REGISTER_COUNT];
 struct qla_hw_data *ha = vha->hw;

 retry = 0;
 tmp_loopid = 0;

 for (;;) {
  ql_dbg(ql_dbg_disc, vha, 0x2000,
      "Trying Fabric Login w/loop id 0x%04x for port "
      "%02x%02x%02x.\n",
      fcport->loop_id, fcport->d_id.b.domain,
      fcport->d_id.b.area, fcport->d_id.b.al_pa);


  rval = ha->isp_ops->fabric_login(vha, fcport->loop_id,
      fcport->d_id.b.domain, fcport->d_id.b.area,
      fcport->d_id.b.al_pa, mb, BIT_0);
  if (rval != QLA_SUCCESS) {
   return rval;
  }
  if (mb[0] == MBS_PORT_ID_USED) {







   retry++;
   tmp_loopid = fcport->loop_id;
   fcport->loop_id = mb[1];

   ql_dbg(ql_dbg_disc, vha, 0x2001,
       "Fabric Login: port in use - next loop "
       "id=0x%04x, port id= %02x%02x%02x.\n",
       fcport->loop_id, fcport->d_id.b.domain,
       fcport->d_id.b.area, fcport->d_id.b.al_pa);

  } else if (mb[0] == MBS_COMMAND_COMPLETE) {



   if (retry) {

    *next_loopid = tmp_loopid;
   } else {




    *next_loopid = (fcport->loop_id + 1);
   }

   if (mb[1] & BIT_0) {
    fcport->port_type = FCT_INITIATOR;
   } else {
    fcport->port_type = FCT_TARGET;
    if (mb[1] & BIT_1) {
     fcport->flags |= FCF_FCP2_DEVICE;
    }
   }

   if (mb[10] & BIT_0)
    fcport->supported_classes |= FC_COS_CLASS2;
   if (mb[10] & BIT_1)
    fcport->supported_classes |= FC_COS_CLASS3;

   rval = QLA_SUCCESS;
   break;
  } else if (mb[0] == MBS_LOOP_ID_USED) {



   fcport->loop_id++;
   rval = qla2x00_find_new_loop_id(vha, fcport);
   if (rval != QLA_SUCCESS) {

    break;
   }
  } else if (mb[0] == MBS_COMMAND_ERROR) {





   *next_loopid = fcport->loop_id;
   ha->isp_ops->fabric_logout(vha, fcport->loop_id,
       fcport->d_id.b.domain, fcport->d_id.b.area,
       fcport->d_id.b.al_pa);
   qla2x00_mark_device_lost(vha, fcport, 1, 0);

   rval = 1;
   break;
  } else {



   ql_dbg(ql_dbg_disc, vha, 0x2002,
       "Failed=%x port_id=%02x%02x%02x loop_id=%x "
       "jiffies=%lx.\n", mb[0], fcport->d_id.b.domain,
       fcport->d_id.b.area, fcport->d_id.b.al_pa,
       fcport->loop_id, jiffies);

   *next_loopid = fcport->loop_id;
   ha->isp_ops->fabric_logout(vha, fcport->loop_id,
       fcport->d_id.b.domain, fcport->d_id.b.area,
       fcport->d_id.b.al_pa);
   qla2x00_clear_loop_id(fcport);
   fcport->login_retry = 0;

   rval = 3;
   break;
  }
 }

 return (rval);
}
