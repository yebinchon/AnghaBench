
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {union acpi_operand_object* object; union acpi_operand_object* node; int value; int class; } ;
struct TYPE_13__ {int ascii; } ;
struct TYPE_12__ {scalar_t__ count; union acpi_operand_object** elements; } ;
struct TYPE_11__ {int pointer; int length; } ;
struct TYPE_10__ {int length; int pointer; } ;
struct TYPE_9__ {int value; } ;
struct TYPE_8__ {int type; } ;
union acpi_operand_object {TYPE_7__ reference; union acpi_operand_object* object; int type; TYPE_6__ name; TYPE_5__ package; TYPE_4__ string; TYPE_3__ buffer; TYPE_2__ integer; TYPE_1__ common; } ;
typedef scalar_t__ u32 ;
struct acpi_namespace_node {union acpi_operand_object* object; int type; } ;


 int ACPI_DB_DEBUG_OBJECT ;
 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 int ACPI_DUMP_BUFFER (int ,int) ;
 int ACPI_FORMAT_UINT64 (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;
 int acpi_gbl_integer_byte_width ;
 int acpi_os_printf (char*) ;
 int acpi_ut_get_object_type_name (union acpi_operand_object*) ;
 int acpi_ut_get_reference_name (union acpi_operand_object*) ;
 int acpi_ut_get_type_name (int ) ;
 int acpi_ut_valid_internal_object (union acpi_operand_object*) ;
 int ex_do_debug_object ;
 int return_VOID ;

__attribute__((used)) static void
acpi_ex_do_debug_object(union acpi_operand_object *source_desc,
   u32 level, u32 index)
{
 u32 i;

 ACPI_FUNCTION_TRACE_PTR(ex_do_debug_object, source_desc);



 if (!((level > 0) && index == 0)) {
  ACPI_DEBUG_PRINT_RAW((ACPI_DB_DEBUG_OBJECT, "[ACPI Debug] %*s",
          level, " "));
 }



 if (index > 0) {
  ACPI_DEBUG_PRINT_RAW((ACPI_DB_DEBUG_OBJECT,
          "(%.2u) ", index - 1));
 }

 if (!source_desc) {
  ACPI_DEBUG_PRINT_RAW((ACPI_DB_DEBUG_OBJECT, "[Null Object]\n"));
  return_VOID;
 }

 if (ACPI_GET_DESCRIPTOR_TYPE(source_desc) == ACPI_DESC_TYPE_OPERAND) {
  ACPI_DEBUG_PRINT_RAW((ACPI_DB_DEBUG_OBJECT, "%s ",
          acpi_ut_get_object_type_name
          (source_desc)));

  if (!acpi_ut_valid_internal_object(source_desc)) {
   ACPI_DEBUG_PRINT_RAW((ACPI_DB_DEBUG_OBJECT,
           "%p, Invalid Internal Object!\n",
           source_desc));
   return_VOID;
  }
 } else if (ACPI_GET_DESCRIPTOR_TYPE(source_desc) ==
     ACPI_DESC_TYPE_NAMED) {
  ACPI_DEBUG_PRINT_RAW((ACPI_DB_DEBUG_OBJECT, "%s: %p\n",
          acpi_ut_get_type_name(((struct
             acpi_namespace_node
             *)source_desc)->
           type),
          source_desc));
  return_VOID;
 } else {
  return_VOID;
 }



 switch (source_desc->common.type) {
 case 132:



  if (acpi_gbl_integer_byte_width == 4) {
   ACPI_DEBUG_PRINT_RAW((ACPI_DB_DEBUG_OBJECT, "0x%8.8X\n",
           (u32) source_desc->integer.
           value));
  } else {
   ACPI_DEBUG_PRINT_RAW((ACPI_DB_DEBUG_OBJECT,
           "0x%8.8X%8.8X\n",
           ACPI_FORMAT_UINT64(source_desc->
         integer.
         value)));
  }
  break;

 case 134:

  ACPI_DEBUG_PRINT_RAW((ACPI_DB_DEBUG_OBJECT, "[0x%.2X]\n",
          (u32) source_desc->buffer.length));
  ACPI_DUMP_BUFFER(source_desc->buffer.pointer,
     (source_desc->buffer.length <
      256) ? source_desc->buffer.length : 256);
  break;

 case 129:

  ACPI_DEBUG_PRINT_RAW((ACPI_DB_DEBUG_OBJECT, "[0x%.2X] \"%s\"\n",
          source_desc->string.length,
          source_desc->string.pointer));
  break;

 case 130:

  ACPI_DEBUG_PRINT_RAW((ACPI_DB_DEBUG_OBJECT,
          "[Contains 0x%.2X Elements]\n",
          source_desc->package.count));



  for (i = 0; i < source_desc->package.count; i++) {
   acpi_ex_do_debug_object(source_desc->package.
      elements[i], level + 4, i + 1);
  }
  break;

 case 131:

  ACPI_DEBUG_PRINT_RAW((ACPI_DB_DEBUG_OBJECT, "[%s] ",
          acpi_ut_get_reference_name(source_desc)));



  switch (source_desc->reference.class) {
  case 136:

   ACPI_DEBUG_PRINT_RAW((ACPI_DB_DEBUG_OBJECT, "0x%X\n",
           source_desc->reference.value));
   break;

  case 135:



   ACPI_DEBUG_PRINT_RAW((ACPI_DB_DEBUG_OBJECT,
           "Table Index 0x%X\n",
           source_desc->reference.value));
   return;

  default:
   break;
  }

  ACPI_DEBUG_PRINT_RAW((ACPI_DB_DEBUG_OBJECT, "  "));



  if (source_desc->reference.node) {
   if (ACPI_GET_DESCRIPTOR_TYPE
       (source_desc->reference.node) !=
       ACPI_DESC_TYPE_NAMED) {
    ACPI_DEBUG_PRINT_RAW((ACPI_DB_DEBUG_OBJECT,
            " %p - Not a valid namespace node\n",
            source_desc->reference.
            node));
   } else {
    ACPI_DEBUG_PRINT_RAW((ACPI_DB_DEBUG_OBJECT,
            "Node %p [%4.4s] ",
            source_desc->reference.
            node,
            (source_desc->reference.
             node)->name.ascii));

    switch ((source_desc->reference.node)->type) {



    case 133:
     acpi_os_printf("Device\n");
     break;

    case 128:
     acpi_os_printf("Thermal Zone\n");
     break;

    default:
     acpi_ex_do_debug_object((source_desc->
         reference.
         node)->object,
        level + 4, 0);
     break;
    }
   }
  } else if (source_desc->reference.object) {
   if (ACPI_GET_DESCRIPTOR_TYPE
       (source_desc->reference.object) ==
       ACPI_DESC_TYPE_NAMED) {
    acpi_ex_do_debug_object(((struct
         acpi_namespace_node *)
        source_desc->reference.
        object)->object,
       level + 4, 0);
   } else {
    acpi_ex_do_debug_object(source_desc->reference.
       object, level + 4, 0);
   }
  }
  break;

 default:

  ACPI_DEBUG_PRINT_RAW((ACPI_DB_DEBUG_OBJECT, "%p\n",
          source_desc));
  break;
 }

 ACPI_DEBUG_PRINT_RAW((ACPI_DB_EXEC, "\n"));
 return_VOID;
}
