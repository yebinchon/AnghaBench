
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int fw_tgt_reported; } ;
struct scsi_qla_host {int host; int device_flags; int dpc_flags; TYPE_1__ flags; int loop_state; int loop_down_timer; } ;
struct TYPE_5__ {int evtcode; int* mbx; } ;
struct TYPE_6__ {TYPE_2__ aenfx; } ;
struct qla_work_evt {TYPE_3__ u; } ;


 int DFLG_NO_CABLE ;
 int FCH_EVT_LINKDOWN ;
 int FCH_EVT_LINKUP ;
 int FCH_EVT_VENDOR_UNIQUE ;
 int LOOP_RESYNC_NEEDED ;
 int LOOP_UP ;



 int atomic_set (int *,int ) ;
 int fc_get_event_number () ;
 int fc_host_post_event (int ,int ,int,int) ;
 int qla2x00_mark_all_devices_lost (struct scsi_qla_host*,int) ;
 int qla2xxx_wake_dpc (struct scsi_qla_host*) ;
 int qlafx00_tgt_detach (struct scsi_qla_host*,int) ;
 int set_bit (int ,int *) ;

int
qlafx00_process_aen(struct scsi_qla_host *vha, struct qla_work_evt *evt)
{
 int rval = 0;
 uint32_t aen_code, aen_data;

 aen_code = FCH_EVT_VENDOR_UNIQUE;
 aen_data = evt->u.aenfx.evtcode;

 switch (evt->u.aenfx.evtcode) {
 case 128:
  if (evt->u.aenfx.mbx[1] == 0) {
   if (evt->u.aenfx.mbx[2] == 1) {
    if (!vha->flags.fw_tgt_reported)
     vha->flags.fw_tgt_reported = 1;
    atomic_set(&vha->loop_down_timer, 0);
    atomic_set(&vha->loop_state, LOOP_UP);
    set_bit(LOOP_RESYNC_NEEDED, &vha->dpc_flags);
    qla2xxx_wake_dpc(vha);
   } else if (evt->u.aenfx.mbx[2] == 2) {
    qlafx00_tgt_detach(vha, evt->u.aenfx.mbx[3]);
   }
  } else if (evt->u.aenfx.mbx[1] == 0xffff) {
   if (evt->u.aenfx.mbx[2] == 1) {
    if (!vha->flags.fw_tgt_reported)
     vha->flags.fw_tgt_reported = 1;
    set_bit(LOOP_RESYNC_NEEDED, &vha->dpc_flags);
   } else if (evt->u.aenfx.mbx[2] == 2) {
    vha->device_flags |= DFLG_NO_CABLE;
    qla2x00_mark_all_devices_lost(vha, 1);
   }
  }
  break;
 case 129:
  aen_code = FCH_EVT_LINKUP;
  aen_data = 0;
  break;
 case 130:
  aen_code = FCH_EVT_LINKDOWN;
  aen_data = 0;
  break;
 }

 fc_host_post_event(vha->host, fc_get_event_number(),
     aen_code, aen_data);

 return rval;
}
