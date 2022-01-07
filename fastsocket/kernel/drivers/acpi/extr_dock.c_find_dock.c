
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int AE_CTRL_TERMINATE ;
 int AE_OK ;
 scalar_t__ dock_add (int ) ;
 scalar_t__ is_dock (int ) ;

__attribute__((used)) static acpi_status
find_dock(acpi_handle handle, u32 lvl, void *context, void **rv)
{
 acpi_status status = AE_OK;

 if (is_dock(handle)) {
  if (dock_add(handle) >= 0) {
   status = AE_CTRL_TERMINATE;
  }
 }
 return status;
}
