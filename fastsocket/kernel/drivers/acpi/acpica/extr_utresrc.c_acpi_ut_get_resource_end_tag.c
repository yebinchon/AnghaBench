
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int * pointer; } ;
union acpi_operand_object {TYPE_1__ buffer; } ;
typedef int u8 ;
typedef int acpi_status ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int AE_OK ;
 int acpi_ut_walk_aml_resources (int *,int ,int *,void**) ;
 int return_ACPI_STATUS (int ) ;
 int ut_get_resource_end_tag ;

acpi_status
acpi_ut_get_resource_end_tag(union acpi_operand_object * obj_desc,
        u8 ** end_tag)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(ut_get_resource_end_tag);



 if (!obj_desc->buffer.length) {
  *end_tag = obj_desc->buffer.pointer;
  return_ACPI_STATUS(AE_OK);
 }



 status = acpi_ut_walk_aml_resources(obj_desc->buffer.pointer,
         obj_desc->buffer.length, ((void*)0),
         (void **)end_tag);

 return_ACPI_STATUS(status);
}
