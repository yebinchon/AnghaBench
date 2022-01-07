
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {scalar_t__ length; int flags; int pointer; } ;
union acpi_operand_object {TYPE_2__ common; TYPE_1__ buffer; } ;
typedef scalar_t__ u32 ;
typedef int acpi_status ;


 int ACPI_ALLOCATE (scalar_t__) ;
 int ACPI_CAST_PTR (int,int ) ;
 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 int ACPI_MEMCPY (int ,int,scalar_t__) ;
 int ACPI_MEMSET (int ,int ,scalar_t__) ;
 scalar_t__ ACPI_TYPE_STRING ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AOPOBJ_STATIC_POINTER ;
 int buffer ;
 int ex_store_buffer_to_buffer ;
 scalar_t__ original_src_type ;
 int return_ACPI_STATUS (int ) ;
 int u8 ;

acpi_status
acpi_ex_store_buffer_to_buffer(union acpi_operand_object *source_desc,
          union acpi_operand_object *target_desc)
{
 u32 length;
 u8 *buffer;

 ACPI_FUNCTION_TRACE_PTR(ex_store_buffer_to_buffer, source_desc);



 if (source_desc == target_desc) {
  return_ACPI_STATUS(AE_OK);
 }



 buffer = ACPI_CAST_PTR(u8, source_desc->buffer.pointer);
 length = source_desc->buffer.length;





 if ((target_desc->buffer.length == 0) ||
     (target_desc->common.flags & AOPOBJ_STATIC_POINTER)) {
  target_desc->buffer.pointer = ACPI_ALLOCATE(length);
  if (!target_desc->buffer.pointer) {
   return_ACPI_STATUS(AE_NO_MEMORY);
  }

  target_desc->buffer.length = length;
 }



 if (length <= target_desc->buffer.length) {



  ACPI_MEMSET(target_desc->buffer.pointer, 0,
       target_desc->buffer.length);
  ACPI_MEMCPY(target_desc->buffer.pointer, buffer, length);
 } else {


  ACPI_MEMCPY(target_desc->buffer.pointer, buffer,
       target_desc->buffer.length);

  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Truncating source buffer from %X to %X\n",
      length, target_desc->buffer.length));
 }



 target_desc->buffer.flags = source_desc->buffer.flags;
 target_desc->common.flags &= ~AOPOBJ_STATIC_POINTER;
 return_ACPI_STATUS(AE_OK);
}
