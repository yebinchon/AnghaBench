
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acpi_callsetfunc (int ,char*,int,int*) ;
 int sony_nc_acpi_handle ;

__attribute__((used)) static int sony_find_snc_handle(int handle)
{
 int i;
 int result;

 for (i = 0x20; i < 0x30; i++) {
  acpi_callsetfunc(sony_nc_acpi_handle, "SN00", i, &result);
  if (result == handle)
   return i-0x20;
 }

 return -1;
}
