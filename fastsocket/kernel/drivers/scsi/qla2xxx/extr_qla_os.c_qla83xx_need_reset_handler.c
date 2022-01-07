
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct qla_hw_data {unsigned long fcoe_reset_timeout; } ;
struct TYPE_8__ {struct qla_hw_data* hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;


 unsigned long HZ ;
 int QLA83XX_IDC_DEV_STATE ;
 int QLA83XX_IDC_DRIVER_ACK ;
 int QLA83XX_IDC_DRV_PRESENCE ;
 int QLA8XXX_DEV_COLD ;
 unsigned long jiffies ;
 int msleep (int) ;
 int ql_log (int ,TYPE_1__*,int,char*,...) ;
 int ql_log_info ;
 int ql_log_warn ;
 int qla83xx_idc_lock (TYPE_1__*,int ) ;
 int qla83xx_idc_unlock (TYPE_1__*,int ) ;
 int qla83xx_rd_reg (TYPE_1__*,int ,int*) ;
 int qla83xx_wr_reg (TYPE_1__*,int ,int) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

__attribute__((used)) static void
qla83xx_need_reset_handler(scsi_qla_host_t *vha)
{
 struct qla_hw_data *ha = vha->hw;
 uint32_t drv_ack, drv_presence;
 unsigned long ack_timeout;


 ack_timeout = jiffies + (ha->fcoe_reset_timeout * HZ);
 while (1) {
  qla83xx_rd_reg(vha, QLA83XX_IDC_DRIVER_ACK, &drv_ack);
  qla83xx_rd_reg(vha, QLA83XX_IDC_DRV_PRESENCE, &drv_presence);
  if ((drv_ack & drv_presence) == drv_presence)
   break;

  if (time_after_eq(jiffies, ack_timeout)) {
   ql_log(ql_log_warn, vha, 0xb067,
       "RESET ACK TIMEOUT! drv_presence=0x%x "
       "drv_ack=0x%x\n", drv_presence, drv_ack);





   if (drv_ack != drv_presence)
    qla83xx_wr_reg(vha, QLA83XX_IDC_DRV_PRESENCE,
        drv_ack);
   break;
  }

  qla83xx_idc_unlock(vha, 0);
  msleep(1000);
  qla83xx_idc_lock(vha, 0);
 }

 qla83xx_wr_reg(vha, QLA83XX_IDC_DEV_STATE, QLA8XXX_DEV_COLD);
 ql_log(ql_log_info, vha, 0xb068, "HW State: COLD/RE-INIT.\n");
}
