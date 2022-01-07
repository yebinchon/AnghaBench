
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acpi_callsetfunc (int ,char*,int,int*) ;
 int sony_find_snc_handle (int) ;
 int sony_nc_acpi_handle ;

__attribute__((used)) static int sony_call_snc_handle(int handle, int argument, int *result)
{
 int offset = sony_find_snc_handle(handle);

 if (offset < 0)
  return -1;

 return acpi_callsetfunc(sony_nc_acpi_handle, "SN07", offset | argument,
    result);
}
