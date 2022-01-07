
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_buffer {scalar_t__ length; int pointer; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_ALLOCATE_BUFFER ;
 scalar_t__ ACPI_ALLOCATE_LOCAL_BUFFER ;
 scalar_t__ ACPI_NO_BUFFER ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;

acpi_status acpi_ut_validate_buffer(struct acpi_buffer * buffer)
{



 if (!buffer) {
  return (AE_BAD_PARAMETER);
 }



 if ((buffer->length == ACPI_NO_BUFFER) ||
     (buffer->length == ACPI_ALLOCATE_BUFFER) ||
     (buffer->length == ACPI_ALLOCATE_LOCAL_BUFFER)) {
  return (AE_OK);
 }



 if (!buffer->pointer) {
  return (AE_BAD_PARAMETER);
 }

 return (AE_OK);
}
