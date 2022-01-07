
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_17__ {int type; } ;
struct TYPE_16__ {int resource_order; int system_level; } ;
struct TYPE_14__ {int length; int address; int proc_id; } ;
struct TYPE_25__ {int node; int class; } ;
struct TYPE_23__ {int value; } ;
struct TYPE_21__ {int length; scalar_t__ pointer; } ;
struct TYPE_20__ {int length; scalar_t__ pointer; } ;
union acpi_operand_object {TYPE_13__ common; TYPE_12__ power_resource; TYPE_10__ processor; TYPE_8__ reference; TYPE_6__ integer; TYPE_4__ buffer; TYPE_3__ string; } ;
struct TYPE_15__ {int resource_order; int system_level; } ;
struct TYPE_26__ {int pblk_length; int pblk_address; int proc_id; } ;
struct TYPE_24__ {int actual_type; int handle; } ;
struct TYPE_22__ {int value; } ;
struct TYPE_19__ {int length; int * pointer; } ;
struct TYPE_18__ {char* pointer; int length; } ;
union acpi_object {int type; TYPE_11__ power_resource; TYPE_9__ processor; TYPE_7__ reference; TYPE_5__ integer; TYPE_2__ buffer; TYPE_1__ string; } ;
typedef int u8 ;
typedef int acpi_status ;
typedef scalar_t__ acpi_size ;


 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MEMCPY (void*,void*,int ) ;
 int ACPI_MEMSET (union acpi_object*,int ,int) ;

 scalar_t__ ACPI_ROUND_UP_TO_NATIVE_WORD (int ) ;






 int AE_INFO ;
 int AE_OK ;
 int AE_SUPPORT ;
 int AE_TYPE ;
 int acpi_ns_get_type (int ) ;
 int acpi_ut_get_type_name (int) ;
 int return_ACPI_STATUS (int ) ;
 int ut_copy_isimple_to_esimple ;

__attribute__((used)) static acpi_status
acpi_ut_copy_isimple_to_esimple(union acpi_operand_object *internal_object,
    union acpi_object *external_object,
    u8 * data_space, acpi_size * buffer_space_used)
{
 acpi_status status = AE_OK;

 ACPI_FUNCTION_TRACE(ut_copy_isimple_to_esimple);

 *buffer_space_used = 0;





 if (!internal_object) {
  return_ACPI_STATUS(AE_OK);
 }



 ACPI_MEMSET(external_object, 0, sizeof(union acpi_object));





 external_object->type = internal_object->common.type;



 switch (internal_object->common.type) {
 case 128:

  external_object->string.pointer = (char *)data_space;
  external_object->string.length = internal_object->string.length;
  *buffer_space_used = ACPI_ROUND_UP_TO_NATIVE_WORD((acpi_size)
          internal_object->
          string.
          length + 1);

  ACPI_MEMCPY((void *)data_space,
       (void *)internal_object->string.pointer,
       (acpi_size) internal_object->string.length + 1);
  break;

 case 133:

  external_object->buffer.pointer = data_space;
  external_object->buffer.length = internal_object->buffer.length;
  *buffer_space_used =
      ACPI_ROUND_UP_TO_NATIVE_WORD(internal_object->string.
       length);

  ACPI_MEMCPY((void *)data_space,
       (void *)internal_object->buffer.pointer,
       internal_object->buffer.length);
  break;

 case 132:

  external_object->integer.value = internal_object->integer.value;
  break;

 case 131:



  switch (internal_object->reference.class) {
  case 134:





   external_object->reference.handle =
       internal_object->reference.node;
   external_object->reference.actual_type =
       acpi_ns_get_type(internal_object->reference.node);
   break;

  default:



   return_ACPI_STATUS(AE_TYPE);
  }
  break;

 case 129:

  external_object->processor.proc_id =
      internal_object->processor.proc_id;
  external_object->processor.pblk_address =
      internal_object->processor.address;
  external_object->processor.pblk_length =
      internal_object->processor.length;
  break;

 case 130:

  external_object->power_resource.system_level =
      internal_object->power_resource.system_level;

  external_object->power_resource.resource_order =
      internal_object->power_resource.resource_order;
  break;

 default:



  ACPI_ERROR((AE_INFO,
       "Unsupported object type, cannot convert to external object: %s",
       acpi_ut_get_type_name(internal_object->common.
        type)));

  return_ACPI_STATUS(AE_SUPPORT);
 }

 return_ACPI_STATUS(status);
}
