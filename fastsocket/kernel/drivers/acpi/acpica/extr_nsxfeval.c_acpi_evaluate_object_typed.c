
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union acpi_object {scalar_t__ type; } ;
typedef scalar_t__ u8 ;
struct acpi_object_list {int dummy; } ;
struct acpi_buffer {scalar_t__ length; int * pointer; } ;
typedef int acpi_string ;
typedef int acpi_status ;
typedef scalar_t__ acpi_object_type ;
typedef int acpi_handle ;


 scalar_t__ ACPI_ALLOCATE_BUFFER ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (int *) ;
 int ACPI_FUNCTION_TRACE (int (*) (int ,int ,struct acpi_object_list*,struct acpi_buffer*,scalar_t__)) ;
 scalar_t__ ACPI_TYPE_ANY ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_NULL_OBJECT ;
 int AE_OK ;
 int AE_TYPE ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int acpi_evaluate_object (int ,int ,struct acpi_object_list*,struct acpi_buffer*) ;
 int acpi_ut_get_type_name (scalar_t__) ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_evaluate_object_typed(acpi_handle handle,
      acpi_string pathname,
      struct acpi_object_list *external_params,
      struct acpi_buffer *return_buffer,
      acpi_object_type return_type)
{
 acpi_status status;
 u8 must_free = FALSE;

 ACPI_FUNCTION_TRACE(acpi_evaluate_object_typed);



 if (!return_buffer) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }

 if (return_buffer->length == ACPI_ALLOCATE_BUFFER) {
  must_free = TRUE;
 }



 status =
     acpi_evaluate_object(handle, pathname, external_params,
     return_buffer);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 if (return_type == ACPI_TYPE_ANY) {
  return_ACPI_STATUS(AE_OK);
 }

 if (return_buffer->length == 0) {



  ACPI_ERROR((AE_INFO, "No return value"));
  return_ACPI_STATUS(AE_NULL_OBJECT);
 }



 if (((union acpi_object *)return_buffer->pointer)->type == return_type) {
  return_ACPI_STATUS(AE_OK);
 }



 ACPI_ERROR((AE_INFO,
      "Incorrect return type [%s] requested [%s]",
      acpi_ut_get_type_name(((union acpi_object *)return_buffer->
        pointer)->type),
      acpi_ut_get_type_name(return_type)));

 if (must_free) {



  ACPI_FREE(return_buffer->pointer);
  return_buffer->pointer = ((void*)0);
 }

 return_buffer->length = 0;
 return_ACPI_STATUS(AE_TYPE);
}
