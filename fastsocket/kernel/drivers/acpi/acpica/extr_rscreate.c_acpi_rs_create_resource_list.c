
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pointer; int length; } ;
union acpi_operand_object {TYPE_1__ buffer; } ;
typedef int u8 ;
typedef int u32 ;
struct acpi_buffer {scalar_t__ length; void* pointer; } ;
typedef int acpi_status ;
typedef scalar_t__ acpi_size ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_OK ;
 int acpi_rs_convert_aml_to_resources ;
 int acpi_rs_get_list_length (int *,int ,scalar_t__*) ;
 int acpi_ut_initialize_buffer (struct acpi_buffer*,scalar_t__) ;
 int acpi_ut_walk_aml_resources (int *,int ,int ,void**) ;
 int return_ACPI_STATUS (int ) ;
 int rs_create_resource_list ;

acpi_status
acpi_rs_create_resource_list(union acpi_operand_object *aml_buffer,
        struct acpi_buffer *output_buffer)
{

 acpi_status status;
 u8 *aml_start;
 acpi_size list_size_needed = 0;
 u32 aml_buffer_length;
 void *resource;

 ACPI_FUNCTION_TRACE(rs_create_resource_list);

 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "AmlBuffer = %p\n", aml_buffer));



 aml_buffer_length = aml_buffer->buffer.length;
 aml_start = aml_buffer->buffer.pointer;





 status = acpi_rs_get_list_length(aml_start, aml_buffer_length,
      &list_size_needed);

 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Status=%X ListSizeNeeded=%X\n",
     status, (u32) list_size_needed));
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 status = acpi_ut_initialize_buffer(output_buffer, list_size_needed);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 resource = output_buffer->pointer;
 status = acpi_ut_walk_aml_resources(aml_start, aml_buffer_length,
         acpi_rs_convert_aml_to_resources,
         &resource);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "OutputBuffer %p Length %X\n",
     output_buffer->pointer, (u32) output_buffer->length));
 return_ACPI_STATUS(AE_OK);
}
