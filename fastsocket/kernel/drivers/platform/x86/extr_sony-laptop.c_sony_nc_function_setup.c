
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;


 int acpi_callsetfunc (int ,char*,int,int*) ;
 int sony_call_snc_handle (int,int,int*) ;
 int sony_nc_acpi_handle ;

__attribute__((used)) static int sony_nc_function_setup(struct acpi_device *device)
{
 int result;


 acpi_callsetfunc(sony_nc_acpi_handle, "SN02", 0xffff, &result);


 sony_call_snc_handle(0x0100, 0, &result);
 sony_call_snc_handle(0x0101, 0, &result);
 sony_call_snc_handle(0x0102, 0x100, &result);
 sony_call_snc_handle(0x0127, 0, &result);

 return 0;
}
