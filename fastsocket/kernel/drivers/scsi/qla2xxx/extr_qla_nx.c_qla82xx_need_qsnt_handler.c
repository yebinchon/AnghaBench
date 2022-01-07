
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct qla_hw_data {int dummy; } ;
struct TYPE_8__ {scalar_t__ online; } ;
struct TYPE_9__ {TYPE_1__ flags; struct qla_hw_data* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;


 int HZ ;
 int QLA2XXX_DRIVER_NAME ;
 int QLA82XX_CRB_DEV_STATE ;
 int QLA82XX_CRB_DRV_ACTIVE ;
 int QLA82XX_CRB_DRV_STATE ;
 int QLA8XXX_DEV_NEED_QUIESCENT ;
 int QLA8XXX_DEV_QUIESCENT ;
 int QLA8XXX_DEV_READY ;
 int jiffies ;
 int msleep (int) ;
 int ql_log (int ,TYPE_2__*,int,char*,...) ;
 int ql_log_info ;
 int qla2x00_perform_loop_resync (TYPE_2__*) ;
 int qla2x00_quiesce_io (TYPE_2__*) ;
 int qla82xx_clear_qsnt_ready (TYPE_2__*) ;
 int qla82xx_idc_lock (struct qla_hw_data*) ;
 int qla82xx_idc_unlock (struct qla_hw_data*) ;
 int qla82xx_rd_32 (struct qla_hw_data*,int ) ;
 int qla82xx_set_qsnt_ready (struct qla_hw_data*) ;
 int qla82xx_wr_32 (struct qla_hw_data*,int ,int ) ;
 scalar_t__ time_after_eq (int,unsigned long) ;

__attribute__((used)) static void
qla82xx_need_qsnt_handler(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;
 uint32_t dev_state, drv_state, drv_active;
 unsigned long reset_timeout;

 if (vha->flags.online) {

  qla2x00_quiesce_io(vha);
 }


 qla82xx_set_qsnt_ready(ha);


 reset_timeout = jiffies + (30 * HZ);

 drv_state = qla82xx_rd_32(ha, QLA82XX_CRB_DRV_STATE);
 drv_active = qla82xx_rd_32(ha, QLA82XX_CRB_DRV_ACTIVE);

 drv_active = drv_active << 0x01;

 while (drv_state != drv_active) {

  if (time_after_eq(jiffies, reset_timeout)) {



   ql_log(ql_log_info, vha, 0xb023,
       "%s : QUIESCENT TIMEOUT DRV_ACTIVE:%d "
       "DRV_STATE:%d.\n", QLA2XXX_DRIVER_NAME,
       drv_active, drv_state);
   qla82xx_wr_32(ha, QLA82XX_CRB_DEV_STATE,
       QLA8XXX_DEV_READY);
   ql_log(ql_log_info, vha, 0xb025,
       "HW State: DEV_READY.\n");
   qla82xx_idc_unlock(ha);
   qla2x00_perform_loop_resync(vha);
   qla82xx_idc_lock(ha);

   qla82xx_clear_qsnt_ready(vha);
   return;
  }

  qla82xx_idc_unlock(ha);
  msleep(1000);
  qla82xx_idc_lock(ha);

  drv_state = qla82xx_rd_32(ha, QLA82XX_CRB_DRV_STATE);
  drv_active = qla82xx_rd_32(ha, QLA82XX_CRB_DRV_ACTIVE);
  drv_active = drv_active << 0x01;
 }
 dev_state = qla82xx_rd_32(ha, QLA82XX_CRB_DEV_STATE);

 if (dev_state == QLA8XXX_DEV_NEED_QUIESCENT) {
  ql_log(ql_log_info, vha, 0xb026,
      "HW State: DEV_QUIESCENT.\n");
  qla82xx_wr_32(ha, QLA82XX_CRB_DEV_STATE, QLA8XXX_DEV_QUIESCENT);
 }
}
