
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* pointer; } ;
union acpi_operand_object {TYPE_1__ buffer; } ;
typedef int u8 ;
struct aml_resource_end_tag {int dummy; } ;
struct acpi_walk_state {int dummy; } ;
typedef int acpi_status ;
typedef int acpi_size ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MEMCPY (int*,int*,int) ;
 int ACPI_PTR_DIFF (int*,int*) ;
 int ACPI_RESOURCE_NAME_END_TAG ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 union acpi_operand_object* acpi_ut_create_buffer_object (int) ;
 int acpi_ut_get_resource_end_tag (union acpi_operand_object*,int**) ;
 int ex_concat_template ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_concat_template(union acpi_operand_object *operand0,
   union acpi_operand_object *operand1,
   union acpi_operand_object **actual_return_desc,
   struct acpi_walk_state *walk_state)
{
 acpi_status status;
 union acpi_operand_object *return_desc;
 u8 *new_buf;
 u8 *end_tag;
 acpi_size length0;
 acpi_size length1;
 acpi_size new_length;

 ACPI_FUNCTION_TRACE(ex_concat_template);
 status = acpi_ut_get_resource_end_tag(operand0, &end_tag);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 length0 = ACPI_PTR_DIFF(end_tag, operand0->buffer.pointer);



 status = acpi_ut_get_resource_end_tag(operand1, &end_tag);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 length1 = ACPI_PTR_DIFF(end_tag, operand1->buffer.pointer);



 new_length = length0 + length1 + sizeof(struct aml_resource_end_tag);



 return_desc = acpi_ut_create_buffer_object(new_length);
 if (!return_desc) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }





 new_buf = return_desc->buffer.pointer;
 ACPI_MEMCPY(new_buf, operand0->buffer.pointer, length0);
 ACPI_MEMCPY(new_buf + length0, operand1->buffer.pointer, length1);



 new_buf[new_length - 1] = 0;
 new_buf[new_length - 2] = ACPI_RESOURCE_NAME_END_TAG | 1;



 *actual_return_desc = return_desc;
 return_ACPI_STATUS(AE_OK);
}
