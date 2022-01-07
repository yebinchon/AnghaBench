
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_hba {scalar_t__ msi_enabled; struct pci_dev* pdev; } ;
struct pci_dev {int irq; } ;


 int free_irq (int ,struct st_hba*) ;
 int pci_disable_msi (struct pci_dev*) ;

__attribute__((used)) static void stex_free_irq(struct st_hba *hba)
{
 struct pci_dev *pdev = hba->pdev;

 free_irq(pdev->irq, hba);
 if (hba->msi_enabled)
  pci_disable_msi(pdev);
}
