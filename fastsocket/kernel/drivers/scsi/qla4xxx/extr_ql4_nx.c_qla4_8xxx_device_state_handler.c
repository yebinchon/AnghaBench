
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct scsi_qla_host {unsigned long nx_dev_init_timeout; TYPE_1__* isp_ops; } ;
struct TYPE_2__ {int (* idc_unlock ) (struct scsi_qla_host*) ;int (* idc_lock ) (struct scsi_qla_host*) ;} ;


 int DEBUG2 (int ) ;
 int DRIVER_NAME ;
 unsigned long HZ ;
 int KERN_INFO ;
 int KERN_WARNING ;
 size_t MAX_STATES ;
 int QLA8XXX_CRB_DEV_STATE ;







 int QLA_ERROR ;
 int QLA_SUCCESS ;
 int is_qla8022 (struct scsi_qla_host*) ;
 int is_qla8032 (struct scsi_qla_host*) ;
 unsigned long jiffies ;
 int msleep (int) ;
 char** qdev_state ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,size_t,...) ;
 int ql4xdontresethba ;
 int qla4_82xx_need_reset_handler (struct scsi_qla_host*) ;
 int qla4_83xx_need_reset_handler (struct scsi_qla_host*) ;
 int qla4_8xxx_device_bootstrap (struct scsi_qla_host*) ;
 int qla4_8xxx_need_qsnt_handler (struct scsi_qla_host*) ;
 size_t qla4_8xxx_rd_direct (struct scsi_qla_host*,int ) ;
 int qla4_8xxx_update_idc_reg (struct scsi_qla_host*) ;
 int qla4_8xxx_wr_direct (struct scsi_qla_host*,int ,int) ;
 int qla4xxx_dead_adapter_cleanup (struct scsi_qla_host*) ;
 int stub1 (struct scsi_qla_host*) ;
 int stub10 (struct scsi_qla_host*) ;
 int stub11 (struct scsi_qla_host*) ;
 int stub12 (struct scsi_qla_host*) ;
 int stub2 (struct scsi_qla_host*) ;
 int stub3 (struct scsi_qla_host*) ;
 int stub4 (struct scsi_qla_host*) ;
 int stub5 (struct scsi_qla_host*) ;
 int stub6 (struct scsi_qla_host*) ;
 int stub7 (struct scsi_qla_host*) ;
 int stub8 (struct scsi_qla_host*) ;
 int stub9 (struct scsi_qla_host*) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

int qla4_8xxx_device_state_handler(struct scsi_qla_host *ha)
{
 uint32_t dev_state;
 int rval = QLA_SUCCESS;
 unsigned long dev_init_timeout;

 rval = qla4_8xxx_update_idc_reg(ha);
 if (rval == QLA_ERROR)
  goto exit_state_handler;

 dev_state = qla4_8xxx_rd_direct(ha, QLA8XXX_CRB_DEV_STATE);
 DEBUG2(ql4_printk(KERN_INFO, ha, "Device state is 0x%x = %s\n",
     dev_state, dev_state < MAX_STATES ?
     qdev_state[dev_state] : "Unknown"));


 dev_init_timeout = jiffies + (ha->nx_dev_init_timeout * HZ);

 ha->isp_ops->idc_lock(ha);
 while (1) {

  if (time_after_eq(jiffies, dev_init_timeout)) {
   ql4_printk(KERN_WARNING, ha,
       "%s: Device Init Failed 0x%x = %s\n",
       DRIVER_NAME,
       dev_state, dev_state < MAX_STATES ?
       qdev_state[dev_state] : "Unknown");
   qla4_8xxx_wr_direct(ha, QLA8XXX_CRB_DEV_STATE,
         133);
  }

  dev_state = qla4_8xxx_rd_direct(ha, QLA8XXX_CRB_DEV_STATE);
  ql4_printk(KERN_INFO, ha, "Device state is 0x%x = %s\n",
      dev_state, dev_state < MAX_STATES ?
      qdev_state[dev_state] : "Unknown");


  switch (dev_state) {
  case 128:
   goto exit;
  case 134:
   rval = qla4_8xxx_device_bootstrap(ha);
   goto exit;
  case 132:
   ha->isp_ops->idc_unlock(ha);
   msleep(1000);
   ha->isp_ops->idc_lock(ha);
   break;
  case 130:





   if (is_qla8032(ha)) {
    qla4_83xx_need_reset_handler(ha);
   } else if (is_qla8022(ha)) {
    if (!ql4xdontresethba) {
     qla4_82xx_need_reset_handler(ha);


     dev_init_timeout = jiffies +
      (ha->nx_dev_init_timeout * HZ);
    } else {
     ha->isp_ops->idc_unlock(ha);
     msleep(1000);
     ha->isp_ops->idc_lock(ha);
    }
   }
   break;
  case 131:

   qla4_8xxx_need_qsnt_handler(ha);
   break;
  case 129:
   ha->isp_ops->idc_unlock(ha);
   msleep(1000);
   ha->isp_ops->idc_lock(ha);
   break;
  case 133:
   ha->isp_ops->idc_unlock(ha);
   qla4xxx_dead_adapter_cleanup(ha);
   rval = QLA_ERROR;
   ha->isp_ops->idc_lock(ha);
   goto exit;
  default:
   ha->isp_ops->idc_unlock(ha);
   qla4xxx_dead_adapter_cleanup(ha);
   rval = QLA_ERROR;
   ha->isp_ops->idc_lock(ha);
   goto exit;
  }
 }
exit:
 ha->isp_ops->idc_unlock(ha);
exit_state_handler:
 return rval;
}
