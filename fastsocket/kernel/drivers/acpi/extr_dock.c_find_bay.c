
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int AE_OK ;
 int dock_add (int ) ;
 int is_dock (int ) ;
 scalar_t__ is_ejectable_bay (int ) ;

__attribute__((used)) static acpi_status
find_bay(acpi_handle handle, u32 lvl, void *context, void **rv)
{

 if (is_ejectable_bay(handle) && !is_dock(handle))
  dock_add(handle);
 return AE_OK;
}
