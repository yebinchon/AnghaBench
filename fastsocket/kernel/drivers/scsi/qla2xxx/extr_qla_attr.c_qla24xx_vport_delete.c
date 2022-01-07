
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_13__ {int cpu_affinity_enabled; } ;
struct qla_hw_data {TYPE_2__ flags; int vport_lock; int vp_idx_map; int cur_vport_count; } ;
struct fc_vport {TYPE_3__* dd_data; } ;
struct TYPE_12__ {int delete_progress; } ;
struct TYPE_14__ {int host; TYPE_7__* req; int vp_idx; int vref_count; scalar_t__ timer_active; TYPE_1__ flags; int dpc_flags; struct qla_hw_data* hw; } ;
typedef TYPE_3__ scsi_qla_host_t ;
struct TYPE_15__ {scalar_t__ id; } ;


 int BUG_ON (int ) ;
 int FCPORT_UPDATE_NEEDED ;
 int LOOP_RESYNC_ACTIVE ;
 scalar_t__ QLA_SUCCESS ;
 int atomic_read (int *) ;
 int clear_bit (int ,int ) ;
 int fc_remove_host (int ) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ql2xextended_error_logging ;
 int ql_dbg (int,TYPE_3__*,int,char*,int ) ;
 int ql_dbg_user ;
 int ql_log (int ,TYPE_3__*,int,char*,...) ;
 int ql_log_info ;
 int ql_log_warn ;
 int qla24xx_deallocate_vp_id (TYPE_3__*) ;
 int qla24xx_disable_vp (TYPE_3__*) ;
 scalar_t__ qla25xx_delete_req_que (TYPE_3__*,TYPE_7__*) ;
 int qla2x00_free_fcports (TYPE_3__*) ;
 int qla2x00_vp_stop_timer (TYPE_3__*) ;
 int random32 () ;
 int scsi_host_put (int ) ;
 int scsi_remove_host (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
qla24xx_vport_delete(struct fc_vport *fc_vport)
{
 scsi_qla_host_t *vha = fc_vport->dd_data;
 struct qla_hw_data *ha = vha->hw;
 uint16_t id = vha->vp_idx;

 while (test_bit(LOOP_RESYNC_ACTIVE, &vha->dpc_flags) ||
     test_bit(FCPORT_UPDATE_NEEDED, &vha->dpc_flags))
  msleep(1000);

 qla24xx_disable_vp(vha);

 vha->flags.delete_progress = 1;

 fc_remove_host(vha->host);

 scsi_remove_host(vha->host);


 qla24xx_deallocate_vp_id(vha);

 if (vha->timer_active) {
  qla2x00_vp_stop_timer(vha);
  ql_dbg(ql_dbg_user, vha, 0x7086,
      "Timer for the VP[%d] has stopped\n", vha->vp_idx);
 }


 if (ql2xextended_error_logging & ql_dbg_user)
  msleep(random32()%10);


 BUG_ON(atomic_read(&vha->vref_count));

 qla2x00_free_fcports(vha);

 mutex_lock(&ha->vport_lock);
 ha->cur_vport_count--;
 clear_bit(vha->vp_idx, ha->vp_idx_map);
 mutex_unlock(&ha->vport_lock);

 if (vha->req->id && !ha->flags.cpu_affinity_enabled) {
  if (qla25xx_delete_req_que(vha, vha->req) != QLA_SUCCESS)
   ql_log(ql_log_warn, vha, 0x7087,
       "Queue delete failed.\n");
 }

 ql_log(ql_log_info, vha, 0x7088, "VP[%d] deleted.\n", id);
 scsi_host_put(vha->host);
 return 0;
}
