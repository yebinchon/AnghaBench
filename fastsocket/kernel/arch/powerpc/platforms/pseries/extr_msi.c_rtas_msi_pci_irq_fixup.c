
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ irq; int dev; } ;


 scalar_t__ NO_IRQ ;
 scalar_t__ check_req_msi (struct pci_dev*,int) ;
 scalar_t__ check_req_msix (struct pci_dev*,int) ;
 int dev_dbg (int *,char*) ;
 int rtas_disable_msi (struct pci_dev*) ;

__attribute__((used)) static void rtas_msi_pci_irq_fixup(struct pci_dev *pdev)
{

 if (pdev->irq == NO_IRQ) {
  dev_dbg(&pdev->dev, "rtas_msi: no LSI, nothing to do.\n");
  return;
 }


 if (check_req_msi(pdev, 1) && check_req_msix(pdev, 1)) {
  dev_dbg(&pdev->dev, "rtas_msi: no req#msi/x, nothing to do.\n");
  return;
 }

 dev_dbg(&pdev->dev, "rtas_msi: disabling existing MSI.\n");
 rtas_disable_msi(pdev);
}
