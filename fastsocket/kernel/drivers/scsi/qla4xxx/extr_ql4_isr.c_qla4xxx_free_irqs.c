
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {TYPE_1__* pdev; int flags; } ;
struct TYPE_2__ {int irq; } ;


 int AF_INTx_ENABLED ;
 int AF_IRQ_ATTACHED ;
 int AF_MSIX_ENABLED ;
 int AF_MSI_ENABLED ;
 int free_irq (int ,struct scsi_qla_host*) ;
 int pci_disable_msi (TYPE_1__*) ;
 int qla4_8xxx_disable_msix (struct scsi_qla_host*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void qla4xxx_free_irqs(struct scsi_qla_host *ha)
{
 if (test_and_clear_bit(AF_IRQ_ATTACHED, &ha->flags)) {
  if (test_bit(AF_MSIX_ENABLED, &ha->flags)) {
   qla4_8xxx_disable_msix(ha);
  } else if (test_and_clear_bit(AF_MSI_ENABLED, &ha->flags)) {
   free_irq(ha->pdev->irq, ha);
   pci_disable_msi(ha->pdev);
  } else if (test_and_clear_bit(AF_INTx_ENABLED, &ha->flags)) {
   free_irq(ha->pdev->irq, ha);
  }
 }
}
