
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_FAILURE (int ) ;
 int acpi_get_handle (int *,char*,int *) ;

__attribute__((used)) static int is_valid_acpi_path(const char *methodName)
{
 acpi_handle handle;
 acpi_status status;

 status = acpi_get_handle(((void*)0), (char *)methodName, &handle);
 return !ACPI_FAILURE(status);
}
