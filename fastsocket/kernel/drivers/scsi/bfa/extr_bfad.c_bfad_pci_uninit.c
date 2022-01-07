
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct bfad_s {int pci_bar2_kva; int pci_bar0_kva; } ;


 int pci_disable_device (struct pci_dev*) ;
 int pci_disable_pcie_error_reporting (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_drvdata (struct pci_dev*,int *) ;

void
bfad_pci_uninit(struct pci_dev *pdev, struct bfad_s *bfad)
{
 pci_iounmap(pdev, bfad->pci_bar0_kva);
 pci_iounmap(pdev, bfad->pci_bar2_kva);
 pci_release_regions(pdev);

 pci_disable_pcie_error_reporting(pdev);
 pci_disable_device(pdev);
 pci_set_drvdata(pdev, ((void*)0));
}
