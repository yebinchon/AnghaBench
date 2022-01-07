
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_qla_host {TYPE_4__* isp_ops; scalar_t__ task_wq; scalar_t__ dpc_thread; scalar_t__ timer_active; TYPE_3__* qla4_83xx_reg; TYPE_2__* qla4_82xx_reg; TYPE_1__* reg; } ;
struct TYPE_8__ {int (* idc_unlock ) (struct scsi_qla_host*) ;int (* idc_lock ) (struct scsi_qla_host*) ;int (* reset_firmware ) (struct scsi_qla_host*) ;int (* disable_intrs ) (struct scsi_qla_host*) ;} ;
struct TYPE_7__ {int risc_intr; } ;
struct TYPE_6__ {int host_int; } ;
struct TYPE_5__ {int ctrl_status; } ;


 int CSR_SCSI_PROCESSOR_INTR ;
 int DID_NO_CONNECT ;
 int destroy_workqueue (scalar_t__) ;
 scalar_t__ is_qla40XX (struct scsi_qla_host*) ;
 scalar_t__ is_qla8022 (struct scsi_qla_host*) ;
 scalar_t__ is_qla8032 (struct scsi_qla_host*) ;
 scalar_t__ is_qla80XX (struct scsi_qla_host*) ;
 int qla4_8xxx_clear_drv_active (struct scsi_qla_host*) ;
 int qla4xxx_abort_active_cmds (struct scsi_qla_host*,int) ;
 int qla4xxx_free_irqs (struct scsi_qla_host*) ;
 int qla4xxx_mem_free (struct scsi_qla_host*) ;
 int qla4xxx_stop_timer (struct scsi_qla_host*) ;
 int readl (int *) ;
 int set_rmask (int ) ;
 int stub1 (struct scsi_qla_host*) ;
 int stub2 (struct scsi_qla_host*) ;
 int stub3 (struct scsi_qla_host*) ;
 int stub4 (struct scsi_qla_host*) ;
 int writel (int ,int *) ;

__attribute__((used)) static void qla4xxx_free_adapter(struct scsi_qla_host *ha)
{
 qla4xxx_abort_active_cmds(ha, DID_NO_CONNECT << 16);


 ha->isp_ops->disable_intrs(ha);

 if (is_qla40XX(ha)) {
  writel(set_rmask(CSR_SCSI_PROCESSOR_INTR),
         &ha->reg->ctrl_status);
  readl(&ha->reg->ctrl_status);
 } else if (is_qla8022(ha)) {
  writel(0, &ha->qla4_82xx_reg->host_int);
  readl(&ha->qla4_82xx_reg->host_int);
 } else if (is_qla8032(ha)) {
  writel(0, &ha->qla4_83xx_reg->risc_intr);
  readl(&ha->qla4_83xx_reg->risc_intr);
 }


 if (ha->timer_active)
  qla4xxx_stop_timer(ha);


 if (ha->dpc_thread)
  destroy_workqueue(ha->dpc_thread);


 if (ha->task_wq)
  destroy_workqueue(ha->task_wq);


 ha->isp_ops->reset_firmware(ha);

 if (is_qla80XX(ha)) {
  ha->isp_ops->idc_lock(ha);
  qla4_8xxx_clear_drv_active(ha);
  ha->isp_ops->idc_unlock(ha);
 }


 qla4xxx_free_irqs(ha);


 qla4xxx_mem_free(ha);
}
