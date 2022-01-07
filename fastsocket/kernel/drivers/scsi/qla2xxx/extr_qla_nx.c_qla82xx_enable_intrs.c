
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tgt_mask_reg; } ;
struct qla_hw_data {int interrupts_on; int hardware_lock; TYPE_1__ nx_legacy_intr; int pdev; } ;
typedef int scsi_qla_host_t ;


 int * pci_get_drvdata (int ) ;
 int qla82xx_mbx_intr_enable (int *) ;
 int qla82xx_wr_32 (struct qla_hw_data*,int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void
qla82xx_enable_intrs(struct qla_hw_data *ha)
{
 scsi_qla_host_t *vha = pci_get_drvdata(ha->pdev);
 qla82xx_mbx_intr_enable(vha);
 spin_lock_irq(&ha->hardware_lock);
 qla82xx_wr_32(ha, ha->nx_legacy_intr.tgt_mask_reg, 0xfbff);
 spin_unlock_irq(&ha->hardware_lock);
 ha->interrupts_on = 1;
}
