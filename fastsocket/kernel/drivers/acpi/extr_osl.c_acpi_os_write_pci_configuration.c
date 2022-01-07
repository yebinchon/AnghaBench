
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_pci_id {int function; int device; int bus; int segment; } ;
typedef int acpi_status ;
typedef int acpi_integer ;


 int AE_ERROR ;
 int AE_OK ;
 int PCI_DEVFN (int ,int ) ;
 int raw_pci_write (int ,int ,int ,int,int,int ) ;

acpi_status
acpi_os_write_pci_configuration(struct acpi_pci_id * pci_id, u32 reg,
    acpi_integer value, u32 width)
{
 int result, size;

 switch (width) {
 case 8:
  size = 1;
  break;
 case 16:
  size = 2;
  break;
 case 32:
  size = 4;
  break;
 default:
  return AE_ERROR;
 }

 result = raw_pci_write(pci_id->segment, pci_id->bus,
    PCI_DEVFN(pci_id->device, pci_id->function),
    reg, size, value);

 return (result ? AE_ERROR : AE_OK);
}
