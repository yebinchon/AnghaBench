
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reference_count; int type; } ;
union acpi_operand_object {TYPE_1__ common; } ;
typedef int u32 ;
typedef int u16 ;


 int ACPI_DB_ALLOCATIONS ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_MAX_REFERENCE_COUNT ;
 int ACPI_TYPE_METHOD ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;



 int acpi_ut_delete_internal_obj (union acpi_operand_object*) ;
 int ut_update_ref_count ;

__attribute__((used)) static void
acpi_ut_update_ref_count(union acpi_operand_object *object, u32 action)
{
 u16 count;
 u16 new_count;

 ACPI_FUNCTION_NAME(ut_update_ref_count);

 if (!object) {
  return;
 }

 count = object->common.reference_count;
 new_count = count;




 switch (action) {
 case 128:

  new_count++;
  object->common.reference_count = new_count;

  ACPI_DEBUG_PRINT((ACPI_DB_ALLOCATIONS,
      "Obj %p Refs=%X, [Incremented]\n",
      object, new_count));
  break;

 case 130:

  if (count < 1) {
   ACPI_DEBUG_PRINT((ACPI_DB_ALLOCATIONS,
       "Obj %p Refs=%X, can't decrement! (Set to 0)\n",
       object, new_count));

   new_count = 0;
  } else {
   new_count--;

   ACPI_DEBUG_PRINT((ACPI_DB_ALLOCATIONS,
       "Obj %p Refs=%X, [Decremented]\n",
       object, new_count));
  }

  if (object->common.type == ACPI_TYPE_METHOD) {
   ACPI_DEBUG_PRINT((ACPI_DB_ALLOCATIONS,
       "Method Obj %p Refs=%X, [Decremented]\n",
       object, new_count));
  }

  object->common.reference_count = new_count;
  if (new_count == 0) {
   acpi_ut_delete_internal_obj(object);
  }
  break;

 case 129:

  ACPI_DEBUG_PRINT((ACPI_DB_ALLOCATIONS,
      "Obj %p Refs=%X, Force delete! (Set to 0)\n",
      object, count));

  new_count = 0;
  object->common.reference_count = new_count;
  acpi_ut_delete_internal_obj(object);
  break;

 default:

  ACPI_ERROR((AE_INFO, "Unknown action (%X)", action));
  break;
 }





 if (count > ACPI_MAX_REFERENCE_COUNT) {
  ACPI_WARNING((AE_INFO,
         "Large Reference Count (%X) in object %p", count,
         object));
 }
}
