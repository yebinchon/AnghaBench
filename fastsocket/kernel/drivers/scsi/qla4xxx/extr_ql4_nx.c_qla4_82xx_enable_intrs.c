
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tgt_mask_reg; } ;
struct scsi_qla_host {int flags; int hardware_lock; TYPE_1__ nx_legacy_intr; } ;


 int AF_INTERRUPTS_ON ;
 int qla4_82xx_wr_32 (struct scsi_qla_host*,int ,int) ;
 int qla4_8xxx_intr_enable (struct scsi_qla_host*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void
qla4_82xx_enable_intrs(struct scsi_qla_host *ha)
{
 qla4_8xxx_intr_enable(ha);

 spin_lock_irq(&ha->hardware_lock);

 qla4_82xx_wr_32(ha, ha->nx_legacy_intr.tgt_mask_reg, 0xfbff);
 spin_unlock_irq(&ha->hardware_lock);
 set_bit(AF_INTERRUPTS_ON, &ha->flags);
}
