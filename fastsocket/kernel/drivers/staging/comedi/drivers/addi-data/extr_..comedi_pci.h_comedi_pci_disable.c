
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int pci_disable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;

__attribute__((used)) static inline void comedi_pci_disable(struct pci_dev *pdev)
{
 pci_release_regions(pdev);
 pci_disable_device(pdev);
}
