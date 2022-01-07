
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int handle; } ;
typedef int acpi_status ;


 int ACPI_DB_ERROR ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int EINVAL ;
 int METHOD_HKEY_SQTY ;
 int acpi_evaluate_integer (int ,int ,int *,unsigned long long*) ;

__attribute__((used)) static inline int acpi_pcc_get_sqty(struct acpi_device *device)
{
 unsigned long long s;
 acpi_status status;

 status = acpi_evaluate_integer(device->handle, METHOD_HKEY_SQTY,
           ((void*)0), &s);
 if (ACPI_SUCCESS(status))
  return s;
 else {
  ACPI_DEBUG_PRINT((ACPI_DB_ERROR,
      "evaluation error HKEY.SQTY\n"));
  return -EINVAL;
 }
}
