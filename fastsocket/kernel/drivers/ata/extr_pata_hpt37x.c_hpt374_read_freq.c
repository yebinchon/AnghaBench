
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {scalar_t__ devfn; int bus; } ;


 int PCI_FUNC (scalar_t__) ;
 int inl (unsigned long) ;
 int pci_dev_put (struct pci_dev*) ;
 struct pci_dev* pci_get_slot (int ,scalar_t__) ;
 unsigned long pci_resource_start (struct pci_dev*,int) ;

__attribute__((used)) static u32 hpt374_read_freq(struct pci_dev *pdev)
{
 u32 freq;
 unsigned long io_base = pci_resource_start(pdev, 4);
 if (PCI_FUNC(pdev->devfn) & 1) {
  struct pci_dev *pdev_0;

  pdev_0 = pci_get_slot(pdev->bus, pdev->devfn - 1);

  if (pdev_0 == ((void*)0))
   return 0;
  io_base = pci_resource_start(pdev_0, 4);
  freq = inl(io_base + 0x90);
  pci_dev_put(pdev_0);
 } else
  freq = inl(io_base + 0x90);
 return freq;
}
