
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_qla_host {int flags; TYPE_1__* qla4_82xx_reg; TYPE_2__* qla4_83xx_reg; } ;
struct TYPE_4__ {int risc_intr; } ;
struct TYPE_3__ {int host_int; } ;


 int AF_IRQ_ATTACHED ;
 int QLA_SUCCESS ;
 scalar_t__ is_qla8022 (struct scsi_qla_host*) ;
 scalar_t__ is_qla8032 (struct scsi_qla_host*) ;
 int qla4_8xxx_device_state_handler (struct scsi_qla_host*) ;
 int qla4xxx_request_irqs (struct scsi_qla_host*) ;
 int readl (int *) ;
 int test_bit (int ,int *) ;
 int writel (int ,int *) ;

int qla4_8xxx_load_risc(struct scsi_qla_host *ha)
{
 int retval;


 if (is_qla8032(ha)) {
  writel(0, &ha->qla4_83xx_reg->risc_intr);
  readl(&ha->qla4_83xx_reg->risc_intr);
 } else if (is_qla8022(ha)) {
  writel(0, &ha->qla4_82xx_reg->host_int);
  readl(&ha->qla4_82xx_reg->host_int);
 }

 retval = qla4_8xxx_device_state_handler(ha);

 if (retval == QLA_SUCCESS && !test_bit(AF_IRQ_ATTACHED, &ha->flags))
  retval = qla4xxx_request_irqs(ha);

 return retval;
}
