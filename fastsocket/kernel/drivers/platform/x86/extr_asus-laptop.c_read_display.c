
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AE_OK ;
 int acpi_evaluate_integer (scalar_t__,int *,int *,unsigned long long*) ;
 scalar_t__ display_get_handle ;
 int pr_warning (char*) ;

__attribute__((used)) static int read_display(void)
{
 unsigned long long value = 0;
 acpi_status rv = AE_OK;





 if (display_get_handle) {
  rv = acpi_evaluate_integer(display_get_handle, ((void*)0),
        ((void*)0), &value);
  if (ACPI_FAILURE(rv))
   pr_warning("Error reading display status\n");
 }

 value &= 0x0F;

 return value;
}
