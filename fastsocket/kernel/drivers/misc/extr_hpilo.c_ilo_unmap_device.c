
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ilo_hwinfo {int mmio_vaddr; int ram_vaddr; int db_vaddr; } ;


 int pci_iounmap (struct pci_dev*,int ) ;

__attribute__((used)) static void ilo_unmap_device(struct pci_dev *pdev, struct ilo_hwinfo *hw)
{
 pci_iounmap(pdev, hw->db_vaddr);
 pci_iounmap(pdev, hw->ram_vaddr);
 pci_iounmap(pdev, hw->mmio_vaddr);
}
