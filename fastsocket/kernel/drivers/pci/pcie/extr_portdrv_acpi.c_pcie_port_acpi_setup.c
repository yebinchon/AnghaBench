
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct acpi_pci_root {int osc_control_set; } ;
typedef int acpi_handle ;


 int EINVAL ;
 int ENODEV ;
 int OSC_PCI_EXPRESS_AER_CONTROL ;
 int OSC_PCI_EXPRESS_NATIVE_HP_CONTROL ;
 int OSC_PCI_EXPRESS_PME_CONTROL ;
 int PCIE_PORT_SERVICE_AER ;
 int PCIE_PORT_SERVICE_HP ;
 int PCIE_PORT_SERVICE_PME ;
 int PCIE_PORT_SERVICE_VC ;
 int acpi_find_root_bridge_handle (struct pci_dev*) ;
 scalar_t__ acpi_pci_disabled ;
 struct acpi_pci_root* acpi_pci_find_root (int ) ;

int pcie_port_acpi_setup(struct pci_dev *port, int *srv_mask)
{
 struct acpi_pci_root *root;
 acpi_handle handle;
 u32 flags;

 if (acpi_pci_disabled)
  return 0;

 handle = acpi_find_root_bridge_handle(port);
 if (!handle)
  return -EINVAL;

 root = acpi_pci_find_root(handle);
 if (!root)
  return -ENODEV;

 flags = root->osc_control_set;

 *srv_mask = PCIE_PORT_SERVICE_VC;
 if (flags & OSC_PCI_EXPRESS_NATIVE_HP_CONTROL)
  *srv_mask |= PCIE_PORT_SERVICE_HP;
 if (flags & OSC_PCI_EXPRESS_PME_CONTROL)
  *srv_mask |= PCIE_PORT_SERVICE_PME;
 if (flags & OSC_PCI_EXPRESS_AER_CONTROL)
  *srv_mask |= PCIE_PORT_SERVICE_AER;

 return 0;
}
