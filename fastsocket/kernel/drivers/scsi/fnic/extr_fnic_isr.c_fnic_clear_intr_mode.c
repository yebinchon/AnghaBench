
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fnic {int vdev; int pdev; } ;


 int VNIC_DEV_INTR_MODE_INTX ;


 int pci_disable_msi (int ) ;
 int pci_disable_msix (int ) ;
 int vnic_dev_get_intr_mode (int ) ;
 int vnic_dev_set_intr_mode (int ,int ) ;

void fnic_clear_intr_mode(struct fnic *fnic)
{
 switch (vnic_dev_get_intr_mode(fnic->vdev)) {
 case 128:
  pci_disable_msix(fnic->pdev);
  break;
 case 129:
  pci_disable_msi(fnic->pdev);
  break;
 default:
  break;
 }

 vnic_dev_set_intr_mode(fnic->vdev, VNIC_DEV_INTR_MODE_INTX);
}
