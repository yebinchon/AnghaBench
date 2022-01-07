
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tgt_mask_reg; } ;
struct scsi_qla_host {int hardware_lock; TYPE_1__ nx_legacy_intr; int flags; } ;


 int AF_INTERRUPTS_ON ;
 int qla4_82xx_wr_32 (struct scsi_qla_host*,int ,int) ;
 int qla4_8xxx_intr_disable (struct scsi_qla_host*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void
qla4_82xx_disable_intrs(struct scsi_qla_host *ha)
{
 if (test_and_clear_bit(AF_INTERRUPTS_ON, &ha->flags))
  qla4_8xxx_intr_disable(ha);

 spin_lock_irq(&ha->hardware_lock);

 qla4_82xx_wr_32(ha, ha->nx_legacy_intr.tgt_mask_reg, 0x0400);
 spin_unlock_irq(&ha->hardware_lock);
}
