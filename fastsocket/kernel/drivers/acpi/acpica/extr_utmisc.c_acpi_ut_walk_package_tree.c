
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_1__ common; } ;
struct TYPE_8__ {size_t index; void* this_target_obj; TYPE_3__* source_object; } ;
union acpi_generic_state {TYPE_4__ pkg; } ;
typedef size_t u32 ;
typedef int acpi_status ;
typedef int (* acpi_pkg_callback ) (int ,union acpi_operand_object*,union acpi_generic_state*,void*) ;
struct TYPE_6__ {scalar_t__ count; scalar_t__* elements; } ;
struct TYPE_7__ {TYPE_2__ package; } ;


 int ACPI_COPY_TYPE_PACKAGE ;
 int ACPI_COPY_TYPE_SIMPLE ;
 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (union acpi_operand_object*) ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int AE_AML_INTERNAL ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 union acpi_generic_state* acpi_ut_create_pkg_state (union acpi_operand_object*,void*,int ) ;
 int acpi_ut_delete_generic_state (union acpi_generic_state*) ;
 union acpi_generic_state* acpi_ut_pop_generic_state (union acpi_generic_state**) ;
 int acpi_ut_push_generic_state (union acpi_generic_state**,union acpi_generic_state*) ;
 int return_ACPI_STATUS (int ) ;
 int ut_walk_package_tree ;

acpi_status
acpi_ut_walk_package_tree(union acpi_operand_object * source_object,
     void *target_object,
     acpi_pkg_callback walk_callback, void *context)
{
 acpi_status status = AE_OK;
 union acpi_generic_state *state_list = ((void*)0);
 union acpi_generic_state *state;
 u32 this_index;
 union acpi_operand_object *this_source_obj;

 ACPI_FUNCTION_TRACE(ut_walk_package_tree);

 state = acpi_ut_create_pkg_state(source_object, target_object, 0);
 if (!state) {
  return_ACPI_STATUS(AE_NO_MEMORY);
 }

 while (state) {



  this_index = state->pkg.index;
  this_source_obj = (union acpi_operand_object *)
      state->pkg.source_object->package.elements[this_index];
  if ((!this_source_obj) ||
      (ACPI_GET_DESCRIPTOR_TYPE(this_source_obj) !=
       ACPI_DESC_TYPE_OPERAND)
      || (this_source_obj->common.type != ACPI_TYPE_PACKAGE)) {
   status =
       walk_callback(ACPI_COPY_TYPE_SIMPLE,
       this_source_obj, state, context);
   if (ACPI_FAILURE(status)) {
    return_ACPI_STATUS(status);
   }

   state->pkg.index++;
   while (state->pkg.index >=
          state->pkg.source_object->package.count) {







    acpi_ut_delete_generic_state(state);
    state = acpi_ut_pop_generic_state(&state_list);



    if (!state) {





     return_ACPI_STATUS(AE_OK);
    }





    state->pkg.index++;
   }
  } else {


   status =
       walk_callback(ACPI_COPY_TYPE_PACKAGE,
       this_source_obj, state, context);
   if (ACPI_FAILURE(status)) {
    return_ACPI_STATUS(status);
   }





   acpi_ut_push_generic_state(&state_list, state);
   state = acpi_ut_create_pkg_state(this_source_obj,
        state->pkg.
        this_target_obj, 0);
   if (!state) {



    while (state_list) {
     state =
         acpi_ut_pop_generic_state
         (&state_list);
     acpi_ut_delete_generic_state(state);
    }
    return_ACPI_STATUS(AE_NO_MEMORY);
   }
  }
 }



 return_ACPI_STATUS(AE_AML_INTERNAL);
}
