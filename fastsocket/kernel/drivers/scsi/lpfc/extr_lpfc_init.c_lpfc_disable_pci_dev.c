
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct lpfc_hba {struct pci_dev* pcidev; } ;


 int IORESOURCE_MEM ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_release_selected_regions (struct pci_dev*,int) ;
 int pci_select_bars (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

__attribute__((used)) static void
lpfc_disable_pci_dev(struct lpfc_hba *phba)
{
 struct pci_dev *pdev;
 int bars;


 if (!phba->pcidev)
  return;
 else
  pdev = phba->pcidev;

 bars = pci_select_bars(pdev, IORESOURCE_MEM);

 pci_release_selected_regions(pdev, bars);
 pci_disable_device(pdev);

 pci_set_drvdata(pdev, ((void*)0));

 return;
}
