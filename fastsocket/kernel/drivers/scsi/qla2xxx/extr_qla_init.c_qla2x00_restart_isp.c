
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint32_t ;
struct rsp_que {int dummy; } ;
struct req_que {int dummy; } ;
struct TYPE_15__ {int chip_reset_done; } ;
struct qla_hw_data {TYPE_2__ flags; TYPE_1__* isp_ops; struct rsp_que** rsp_q_map; struct req_que** req_q_map; } ;
struct TYPE_16__ {int online; } ;
struct TYPE_17__ {int device_flags; int dpc_flags; int loop_down_timer; TYPE_3__ flags; struct qla_hw_data* hw; } ;
typedef TYPE_4__ scsi_qla_host_t ;
struct TYPE_14__ {int (* chip_diag ) (TYPE_4__*) ;} ;


 int DFLG_NO_CABLE ;
 int ISP_ABORT_NEEDED ;
 int LOOP_RESYNC_NEEDED ;
 int MK_SYNC_ALL ;
 int RESET_MARKER_NEEDED ;
 int atomic_read (int *) ;
 int clear_bit (int ,int *) ;
 int ql_dbg (int ,TYPE_4__*,int,char*,int) ;
 int ql_dbg_taskm ;
 int qla25xx_init_queues (struct qla_hw_data*) ;
 int qla2x00_configure_loop (TYPE_4__*) ;
 int qla2x00_fw_ready (TYPE_4__*) ;
 int qla2x00_init_rings (TYPE_4__*) ;
 scalar_t__ qla2x00_isp_firmware (TYPE_4__*) ;
 int qla2x00_marker (TYPE_4__*,struct req_que*,struct rsp_que*,int ,int ,int ) ;
 int qla2x00_setup_chip (TYPE_4__*) ;
 int stub1 (TYPE_4__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
qla2x00_restart_isp(scsi_qla_host_t *vha)
{
 int status = 0;
 uint32_t wait_time;
 struct qla_hw_data *ha = vha->hw;
 struct req_que *req = ha->req_q_map[0];
 struct rsp_que *rsp = ha->rsp_q_map[0];


 if (qla2x00_isp_firmware(vha)) {
  vha->flags.online = 0;
  status = ha->isp_ops->chip_diag(vha);
  if (!status)
   status = qla2x00_setup_chip(vha);
 }

 if (!status && !(status = qla2x00_init_rings(vha))) {
  clear_bit(RESET_MARKER_NEEDED, &vha->dpc_flags);
  ha->flags.chip_reset_done = 1;

  qla25xx_init_queues(ha);

  status = qla2x00_fw_ready(vha);
  if (!status) {
   ql_dbg(ql_dbg_taskm, vha, 0x8031,
       "Start configure loop status = %d.\n", status);


   qla2x00_marker(vha, req, rsp, 0, 0, MK_SYNC_ALL);

   vha->flags.online = 1;

   wait_time = 256;
   do {
    clear_bit(LOOP_RESYNC_NEEDED, &vha->dpc_flags);
    qla2x00_configure_loop(vha);
    wait_time--;
   } while (!atomic_read(&vha->loop_down_timer) &&
    !(test_bit(ISP_ABORT_NEEDED, &vha->dpc_flags))
    && wait_time && (test_bit(LOOP_RESYNC_NEEDED,
    &vha->dpc_flags)));
  }


  if ((vha->device_flags & DFLG_NO_CABLE))
   status = 0;

  ql_dbg(ql_dbg_taskm, vha, 0x8032,
      "Configure loop done, status = 0x%x.\n", status);
 }
 return (status);
}
