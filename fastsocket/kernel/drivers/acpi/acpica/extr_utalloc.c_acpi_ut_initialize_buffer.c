
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_buffer {int length; int pointer; } ;
typedef int acpi_status ;
typedef int acpi_size ;


 int ACPI_ALLOCATE (int) ;


 int ACPI_MEMSET (int ,int ,int) ;

 int AE_BAD_PARAMETER ;
 int AE_BUFFER_OVERFLOW ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int acpi_os_allocate (int) ;

acpi_status
acpi_ut_initialize_buffer(struct acpi_buffer * buffer,
     acpi_size required_length)
{
 acpi_size input_buffer_length;



 if (!buffer || !required_length) {
  return (AE_BAD_PARAMETER);
 }





 input_buffer_length = buffer->length;
 buffer->length = required_length;





 switch (input_buffer_length) {
 case 128:



  return (AE_BUFFER_OVERFLOW);

 case 130:



  buffer->pointer = acpi_os_allocate(required_length);
  break;

 case 129:



  buffer->pointer = ACPI_ALLOCATE(required_length);
  break;

 default:



  if (input_buffer_length < required_length) {
   return (AE_BUFFER_OVERFLOW);
  }
  break;
 }



 if (!buffer->pointer) {
  return (AE_NO_MEMORY);
 }



 ACPI_MEMSET(buffer->pointer, 0, required_length);
 return (AE_OK);
}
