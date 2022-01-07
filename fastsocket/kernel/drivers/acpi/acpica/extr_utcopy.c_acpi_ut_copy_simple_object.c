
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


struct TYPE_14__ {int os_semaphore; } ;
struct TYPE_13__ {int os_mutex; } ;
struct TYPE_12__ {int handler; } ;
struct TYPE_11__ {int object; int class; } ;
struct TYPE_10__ {char* pointer; int length; } ;
struct TYPE_9__ {char* pointer; int length; } ;
struct TYPE_8__ {int type; int flags; union acpi_operand_object* next_object; int reference_count; } ;
union acpi_operand_object {TYPE_7__ event; TYPE_6__ mutex; TYPE_5__ region; TYPE_4__ reference; TYPE_3__ string; TYPE_2__ buffer; TYPE_1__ common; } ;
typedef int u16 ;
typedef int acpi_status ;
typedef int acpi_size ;


 void* ACPI_ALLOCATE (int) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_MEMCPY (char*,char*,int) ;
 int ACPI_NO_UNIT_LIMIT ;
 int ACPI_REFCLASS_TABLE ;






 int AE_NO_MEMORY ;
 int AE_OK ;
 int AOPOBJ_STATIC_POINTER ;
 int acpi_os_create_mutex (int *) ;
 int acpi_os_create_semaphore (int ,int ,int *) ;
 int acpi_ut_add_reference (int ) ;

__attribute__((used)) static acpi_status
acpi_ut_copy_simple_object(union acpi_operand_object *source_desc,
      union acpi_operand_object *dest_desc)
{
 u16 reference_count;
 union acpi_operand_object *next_object;
 acpi_status status;



 reference_count = dest_desc->common.reference_count;
 next_object = dest_desc->common.next_object;



 ACPI_MEMCPY((char *)dest_desc, (char *)source_desc,
      sizeof(union acpi_operand_object));



 dest_desc->common.reference_count = reference_count;
 dest_desc->common.next_object = next_object;



 dest_desc->common.flags &= ~AOPOBJ_STATIC_POINTER;



 switch (dest_desc->common.type) {
 case 133:





  if ((source_desc->buffer.pointer) &&
      (source_desc->buffer.length)) {
   dest_desc->buffer.pointer =
       ACPI_ALLOCATE(source_desc->buffer.length);
   if (!dest_desc->buffer.pointer) {
    return (AE_NO_MEMORY);
   }



   ACPI_MEMCPY(dest_desc->buffer.pointer,
        source_desc->buffer.pointer,
        source_desc->buffer.length);
  }
  break;

 case 128:





  if (source_desc->string.pointer) {
   dest_desc->string.pointer =
       ACPI_ALLOCATE((acpi_size) source_desc->string.
       length + 1);
   if (!dest_desc->string.pointer) {
    return (AE_NO_MEMORY);
   }



   ACPI_MEMCPY(dest_desc->string.pointer,
        source_desc->string.pointer,
        (acpi_size) source_desc->string.length + 1);
  }
  break;

 case 131:
  if (source_desc->reference.class == ACPI_REFCLASS_TABLE) {
   break;
  }

  acpi_ut_add_reference(source_desc->reference.object);
  break;

 case 129:



  if (dest_desc->region.handler) {
   acpi_ut_add_reference(dest_desc->region.handler);
  }
  break;





 case 130:

  status = acpi_os_create_mutex(&dest_desc->mutex.os_mutex);
  if (ACPI_FAILURE(status)) {
   return status;
  }
  break;

 case 132:

  status = acpi_os_create_semaphore(ACPI_NO_UNIT_LIMIT, 0,
        &dest_desc->event.
        os_semaphore);
  if (ACPI_FAILURE(status)) {
   return status;
  }
  break;

 default:

  break;
 }

 return (AE_OK);
}
