
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_10__ {scalar_t__ flags; scalar_t__ data; scalar_t__ lun; } ;
struct TYPE_11__ {TYPE_3__ tmf; } ;
struct srb_iocb {TYPE_4__ u; } ;
struct scsi_qla_host {TYPE_2__* hw; int dpc_flags; } ;
struct TYPE_8__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_13__ {TYPE_5__* fcport; int (* free ) (int ,TYPE_6__*) ;TYPE_1__ u; } ;
typedef TYPE_6__ srb_t ;
typedef struct scsi_qla_host scsi_qla_host_t ;
struct TYPE_12__ {int vha; int loop_id; } ;
struct TYPE_9__ {int * rsp_q_map; int * req_q_map; } ;


 int MK_SYNC_ID ;
 int MK_SYNC_ID_LUN ;
 int QLA_SUCCESS ;
 scalar_t__ TCF_LUN_RESET ;
 int UNLOADING ;
 int ql_dbg (int ,struct scsi_qla_host*,int,char*,int) ;
 int ql_dbg_taskm ;
 int qla2x00_marker (struct scsi_qla_host*,int ,int ,int ,scalar_t__,int ) ;
 int stub1 (int ,TYPE_6__*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void
qla2x00_async_tm_cmd_done(void *data, void *ptr, int res)
{
 srb_t *sp = (srb_t*)ptr;
 struct srb_iocb *iocb = &sp->u.iocb_cmd;
 struct scsi_qla_host *vha = (scsi_qla_host_t *)data;
 uint32_t flags;
 uint16_t lun;
 int rval;

 if (!test_bit(UNLOADING, &vha->dpc_flags)) {
  flags = iocb->u.tmf.flags;
  lun = (uint16_t)iocb->u.tmf.lun;


  rval = qla2x00_marker(vha, vha->hw->req_q_map[0],
   vha->hw->rsp_q_map[0], sp->fcport->loop_id, lun,
   flags == TCF_LUN_RESET ? MK_SYNC_ID_LUN : MK_SYNC_ID);

  if ((rval != QLA_SUCCESS) || iocb->u.tmf.data) {
   ql_dbg(ql_dbg_taskm, vha, 0x8030,
       "TM IOCB failed (%x).\n", rval);
  }
 }
 sp->free(sp->fcport->vha, sp);
}
