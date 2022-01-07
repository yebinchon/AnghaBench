
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int irq; scalar_t__ pin; } ;


 int ENODEV ;
 int PCIE_PORT_DEVICE_MAXSERVICES ;
 int PCIE_PORT_SERVICE_HP ;
 int PCIE_PORT_SERVICE_PME ;
 size_t PCIE_PORT_SERVICE_VC_SHIFT ;
 int pci_enable_msi (struct pci_dev*) ;
 int pcie_port_enable_msix (struct pci_dev*,int*,int) ;
 scalar_t__ pciehp_no_msi () ;

__attribute__((used)) static int init_service_irqs(struct pci_dev *dev, int *irqs, int mask)
{
 int i, irq = -1;





 if (((mask & PCIE_PORT_SERVICE_PME) && (0)) ||
     ((mask & PCIE_PORT_SERVICE_HP) && pciehp_no_msi())) {
  if (dev->pin)
   irq = dev->irq;
  goto no_msi;
 }


 if (!pcie_port_enable_msix(dev, irqs, mask))
  return 0;


 if (!pci_enable_msi(dev) || dev->pin)
  irq = dev->irq;

 no_msi:
 for (i = 0; i < PCIE_PORT_DEVICE_MAXSERVICES; i++)
  irqs[i] = irq;
 irqs[PCIE_PORT_SERVICE_VC_SHIFT] = -1;

 if (irq < 0)
  return -ENODEV;
 return 0;
}
