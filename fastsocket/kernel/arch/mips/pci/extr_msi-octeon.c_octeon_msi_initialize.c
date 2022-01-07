
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQF_SHARED ;
 int OCTEON_FEATURE_PCIE ;
 int OCTEON_IRQ_PCI_MSI0 ;
 int OCTEON_IRQ_PCI_MSI1 ;
 int OCTEON_IRQ_PCI_MSI2 ;
 int OCTEON_IRQ_PCI_MSI3 ;
 scalar_t__ octeon_has_feature (int ) ;
 scalar_t__ octeon_is_pci_host () ;
 int octeon_msi_interrupt ;
 int panic (char*) ;
 scalar_t__ request_irq (int ,int ,int ,char*,int ) ;

int octeon_msi_initialize(void)
{
 if (octeon_has_feature(OCTEON_FEATURE_PCIE)) {
  if (request_irq(OCTEON_IRQ_PCI_MSI0, octeon_msi_interrupt,
    IRQF_SHARED,
    "MSI[0:63]", octeon_msi_interrupt))
   panic("request_irq(OCTEON_IRQ_PCI_MSI0) failed");
 } else if (octeon_is_pci_host()) {
  if (request_irq(OCTEON_IRQ_PCI_MSI0, octeon_msi_interrupt,
    IRQF_SHARED,
    "MSI[0:15]", octeon_msi_interrupt))
   panic("request_irq(OCTEON_IRQ_PCI_MSI0) failed");

  if (request_irq(OCTEON_IRQ_PCI_MSI1, octeon_msi_interrupt,
    IRQF_SHARED,
    "MSI[16:31]", octeon_msi_interrupt))
   panic("request_irq(OCTEON_IRQ_PCI_MSI1) failed");

  if (request_irq(OCTEON_IRQ_PCI_MSI2, octeon_msi_interrupt,
    IRQF_SHARED,
    "MSI[32:47]", octeon_msi_interrupt))
   panic("request_irq(OCTEON_IRQ_PCI_MSI2) failed");

  if (request_irq(OCTEON_IRQ_PCI_MSI3, octeon_msi_interrupt,
    IRQF_SHARED,
    "MSI[48:63]", octeon_msi_interrupt))
   panic("request_irq(OCTEON_IRQ_PCI_MSI3) failed");

 }
 return 0;
}
