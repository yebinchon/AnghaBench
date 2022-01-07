
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ length; int pointer; } ;
struct TYPE_3__ {int flags; } ;
union acpi_operand_object {TYPE_2__ string; TYPE_1__ common; } ;
typedef scalar_t__ u32 ;
typedef int acpi_status ;
typedef scalar_t__ acpi_size ;


 int ACPI_ALLOCATE_ZEROED (scalar_t__) ;
 int ACPI_CAST_PTR (int,int ) ;
 int ACPI_FREE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 int ACPI_MEMCPY (int ,int,scalar_t__) ;
 int ACPI_MEMSET (int ,int ,scalar_t__) ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AOPOBJ_STATIC_POINTER ;
 int buffer ;
 int ex_store_string_to_string ;
 int return_ACPI_STATUS (int ) ;
 int u8 ;

acpi_status
acpi_ex_store_string_to_string(union acpi_operand_object *source_desc,
          union acpi_operand_object *target_desc)
{
 u32 length;
 u8 *buffer;

 ACPI_FUNCTION_TRACE_PTR(ex_store_string_to_string, source_desc);



 if (source_desc == target_desc) {
  return_ACPI_STATUS(AE_OK);
 }



 buffer = ACPI_CAST_PTR(u8, source_desc->string.pointer);
 length = source_desc->string.length;





 if ((length < target_desc->string.length) &&
     (!(target_desc->common.flags & AOPOBJ_STATIC_POINTER))) {




  ACPI_MEMSET(target_desc->string.pointer, 0,
       (acpi_size) target_desc->string.length + 1);
  ACPI_MEMCPY(target_desc->string.pointer, buffer, length);
 } else {




  if (target_desc->string.pointer &&
      (!(target_desc->common.flags & AOPOBJ_STATIC_POINTER))) {



   ACPI_FREE(target_desc->string.pointer);
  }

  target_desc->string.pointer = ACPI_ALLOCATE_ZEROED((acpi_size)
           length + 1);
  if (!target_desc->string.pointer) {
   return_ACPI_STATUS(AE_NO_MEMORY);
  }

  target_desc->common.flags &= ~AOPOBJ_STATIC_POINTER;
  ACPI_MEMCPY(target_desc->string.pointer, buffer, length);
 }



 target_desc->string.length = length;
 return_ACPI_STATUS(AE_OK);
}
