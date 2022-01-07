
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {int vdev; int pdev; } ;




 int VNIC_DEV_INTR_MODE_UNKNOWN ;
 int pci_disable_msi (int ) ;
 int pci_disable_msix (int ) ;
 int vnic_dev_get_intr_mode (int ) ;
 int vnic_dev_set_intr_mode (int ,int ) ;

__attribute__((used)) static void enic_clear_intr_mode(struct enic *enic)
{
 switch (vnic_dev_get_intr_mode(enic->vdev)) {
 case 128:
  pci_disable_msix(enic->pdev);
  break;
 case 129:
  pci_disable_msi(enic->pdev);
  break;
 default:
  break;
 }

 vnic_dev_set_intr_mode(enic->vdev, VNIC_DEV_INTR_MODE_UNKNOWN);
}
