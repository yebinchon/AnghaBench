
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ACPI_STRCMP (char*,int ) ;
 int FALSE ;
 int PCI_EXPRESS_ROOT_HID_STRING ;
 int PCI_ROOT_HID_STRING ;
 int TRUE ;

u8 acpi_ut_is_pci_root_bridge(char *id)
{





 if (!(ACPI_STRCMP(id,
     PCI_ROOT_HID_STRING)) ||
     !(ACPI_STRCMP(id, PCI_EXPRESS_ROOT_HID_STRING))) {
  return (TRUE);
 }

 return (FALSE);
}
