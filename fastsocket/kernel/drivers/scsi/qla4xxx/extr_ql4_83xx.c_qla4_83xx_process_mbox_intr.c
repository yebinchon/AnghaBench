
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_qla_host {int mbox_status_count; TYPE_2__* isp_ops; TYPE_1__* qla4_83xx_reg; } ;
struct TYPE_4__ {int (* interrupt_service_routine ) (struct scsi_qla_host*,int) ;} ;
struct TYPE_3__ {int risc_intr; } ;


 int readl (int *) ;
 int stub1 (struct scsi_qla_host*,int) ;

void qla4_83xx_process_mbox_intr(struct scsi_qla_host *ha, int outcount)
{
 int intr_status;

 intr_status = readl(&ha->qla4_83xx_reg->risc_intr);
 if (intr_status) {
  ha->mbox_status_count = outcount;
  ha->isp_ops->interrupt_service_routine(ha, intr_status);
 }
}
