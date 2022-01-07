
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 scalar_t__ is_dock_device (int ) ;

__attribute__((used)) static acpi_status
is_pci_dock_device(acpi_handle handle, u32 lvl, void *context, void **rv)
{
 int *count = (int *)context;

 if (is_dock_device(handle)) {
  (*count)++;
  return AE_CTRL_TERMINATE;
 } else {
  return AE_OK;
 }
}
