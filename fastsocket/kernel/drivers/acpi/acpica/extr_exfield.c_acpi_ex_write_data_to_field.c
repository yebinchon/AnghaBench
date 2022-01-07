
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_16__ {int field_flags; int base_byte_offset; int start_field_bit_offset; int bit_length; } ;
struct TYPE_15__ {int type; int flags; } ;
struct TYPE_14__ {scalar_t__ length; void* pointer; } ;
struct TYPE_13__ {scalar_t__ length; void* pointer; } ;
struct TYPE_12__ {int value; } ;
struct TYPE_11__ {int attribute; TYPE_2__* region_obj; } ;
union acpi_operand_object {TYPE_8__ common_field; TYPE_7__ common; TYPE_6__ string; TYPE_5__ buffer; TYPE_4__ integer; TYPE_3__ field; } ;
typedef scalar_t__ u32 ;
typedef int acpi_status ;
typedef int acpi_integer ;
struct TYPE_9__ {scalar_t__ space_id; } ;
struct TYPE_10__ {TYPE_1__ region; } ;


 scalar_t__ ACPI_ADR_SPACE_IPMI ;
 scalar_t__ ACPI_ADR_SPACE_SMBUS ;
 int ACPI_DB_BFIELD ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 scalar_t__ ACPI_IPMI_BUFFER_SIZE ;
 int ACPI_MEMCPY (void*,void*,scalar_t__) ;
 scalar_t__ ACPI_SMBUS_BUFFER_SIZE ;

 int ACPI_TYPE_BUFFER_FIELD ;

 int ACPI_TYPE_LOCAL_REGION_FIELD ;

 int ACPI_WRITE ;
 int AE_AML_BUFFER_LIMIT ;
 int AE_AML_NO_OPERAND ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AOPOBJ_DATA_VALID ;
 int acpi_ds_get_buffer_field_arguments (union acpi_operand_object*) ;
 int acpi_ex_access_region (union acpi_operand_object*,int ,int *,scalar_t__) ;
 int acpi_ex_acquire_global_lock (int ) ;
 int acpi_ex_insert_into_field (union acpi_operand_object*,void*,scalar_t__) ;
 int acpi_ex_release_global_lock (int ) ;
 union acpi_operand_object* acpi_ut_create_buffer_object (scalar_t__) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int acpi_ut_get_type_name (int) ;
 int ex_write_data_to_field ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_write_data_to_field(union acpi_operand_object *source_desc,
       union acpi_operand_object *obj_desc,
       union acpi_operand_object **result_desc)
{
 acpi_status status;
 u32 length;
 void *buffer;
 union acpi_operand_object *buffer_desc;
 u32 function;

 ACPI_FUNCTION_TRACE_PTR(ex_write_data_to_field, obj_desc);



 if (!source_desc || !obj_desc) {
  return_ACPI_STATUS(AE_AML_NO_OPERAND);
 }

 if (obj_desc->common.type == ACPI_TYPE_BUFFER_FIELD) {




  if (!(obj_desc->common.flags & AOPOBJ_DATA_VALID)) {
   status = acpi_ds_get_buffer_field_arguments(obj_desc);
   if (ACPI_FAILURE(status)) {
    return_ACPI_STATUS(status);
   }
  }
 } else if ((obj_desc->common.type == ACPI_TYPE_LOCAL_REGION_FIELD) &&
     (obj_desc->field.region_obj->region.space_id ==
      ACPI_ADR_SPACE_SMBUS
      || obj_desc->field.region_obj->region.space_id ==
      ACPI_ADR_SPACE_IPMI)) {
  if (source_desc->common.type != 130) {
   ACPI_ERROR((AE_INFO,
        "SMBus or IPMI write requires Buffer, found type %s",
        acpi_ut_get_object_type_name(source_desc)));

   return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
  }

  if (obj_desc->field.region_obj->region.space_id ==
      ACPI_ADR_SPACE_SMBUS) {
   length = ACPI_SMBUS_BUFFER_SIZE;
   function =
       ACPI_WRITE | (obj_desc->field.attribute << 16);
  } else {

   length = ACPI_IPMI_BUFFER_SIZE;
   function = ACPI_WRITE;
  }

  if (source_desc->buffer.length < length) {
   ACPI_ERROR((AE_INFO,
        "SMBus or IPMI write requires Buffer of length %X, found length %X",
        length, source_desc->buffer.length));

   return_ACPI_STATUS(AE_AML_BUFFER_LIMIT);
  }



  buffer_desc = acpi_ut_create_buffer_object(length);
  if (!buffer_desc) {
   return_ACPI_STATUS(AE_NO_MEMORY);
  }

  buffer = buffer_desc->buffer.pointer;
  ACPI_MEMCPY(buffer, source_desc->buffer.pointer, length);



  acpi_ex_acquire_global_lock(obj_desc->common_field.field_flags);





  status = acpi_ex_access_region(obj_desc, 0,
            (acpi_integer *) buffer,
            function);
  acpi_ex_release_global_lock(obj_desc->common_field.field_flags);

  *result_desc = buffer_desc;
  return_ACPI_STATUS(status);
 }



 switch (source_desc->common.type) {
 case 129:
  buffer = &source_desc->integer.value;
  length = sizeof(source_desc->integer.value);
  break;

 case 130:
  buffer = source_desc->buffer.pointer;
  length = source_desc->buffer.length;
  break;

 case 128:
  buffer = source_desc->string.pointer;
  length = source_desc->string.length;
  break;

 default:
  return_ACPI_STATUS(AE_AML_OPERAND_TYPE);
 }

 ACPI_DEBUG_PRINT((ACPI_DB_BFIELD,
     "FieldWrite [FROM]: Obj %p (%s:%X), Buf %p, ByteLen %X\n",
     source_desc,
     acpi_ut_get_type_name(source_desc->common.type),
     source_desc->common.type, buffer, length));

 ACPI_DEBUG_PRINT((ACPI_DB_BFIELD,
     "FieldWrite [TO]:   Obj %p (%s:%X), BitLen %X, BitOff %X, ByteOff %X\n",
     obj_desc,
     acpi_ut_get_type_name(obj_desc->common.type),
     obj_desc->common.type,
     obj_desc->common_field.bit_length,
     obj_desc->common_field.start_field_bit_offset,
     obj_desc->common_field.base_byte_offset));



 acpi_ex_acquire_global_lock(obj_desc->common_field.field_flags);



 status = acpi_ex_insert_into_field(obj_desc, buffer, length);
 acpi_ex_release_global_lock(obj_desc->common_field.field_flags);

 return_ACPI_STATUS(status);
}
