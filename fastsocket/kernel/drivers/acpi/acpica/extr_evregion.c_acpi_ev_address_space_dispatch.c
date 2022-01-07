
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int handler_flags; int context; int (* handler ) (scalar_t__,scalar_t__,scalar_t__,int *,int ,void*) ;int (* setup ) (union acpi_operand_object*,int ,int ,void**) ;} ;
struct TYPE_5__ {int flags; int space_id; scalar_t__ address; union acpi_operand_object* handler; int node; } ;
struct TYPE_4__ {void* region_context; } ;
union acpi_operand_object {TYPE_3__ address_space; TYPE_2__ region; TYPE_1__ extra; } ;
typedef scalar_t__ u32 ;
typedef int acpi_status ;
typedef int acpi_integer ;
typedef int (* acpi_adr_space_setup ) (union acpi_operand_object*,int ,int ,void**) ;
typedef int (* acpi_adr_space_handler ) (scalar_t__,scalar_t__,scalar_t__,int *,int ,void*) ;


 int ACPI_ADDR_HANDLER_DEFAULT_INSTALLED ;
 int ACPI_DB_OPREGION ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_NATIVE_UINT (scalar_t__) ;
 int ACPI_FREE (void*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_REGION_ACTIVATE ;
 int AE_INFO ;
 int AE_NOT_EXIST ;
 int AOPOBJ_SETUP_COMPLETE ;
 int acpi_ex_enter_interpreter () ;
 int acpi_ex_exit_interpreter () ;
 union acpi_operand_object* acpi_ns_get_secondary_object (union acpi_operand_object*) ;
 int acpi_ut_get_node_name (int ) ;
 int acpi_ut_get_region_name (int ) ;
 int ev_address_space_dispatch ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ev_address_space_dispatch(union acpi_operand_object *region_obj,
          u32 function,
          u32 region_offset,
          u32 bit_width, acpi_integer * value)
{
 acpi_status status;
 acpi_adr_space_handler handler;
 acpi_adr_space_setup region_setup;
 union acpi_operand_object *handler_desc;
 union acpi_operand_object *region_obj2;
 void *region_context = ((void*)0);

 ACPI_FUNCTION_TRACE(ev_address_space_dispatch);

 region_obj2 = acpi_ns_get_secondary_object(region_obj);
 if (!region_obj2) {
  return_ACPI_STATUS(AE_NOT_EXIST);
 }



 handler_desc = region_obj->region.handler;
 if (!handler_desc) {
  ACPI_ERROR((AE_INFO,
       "No handler for Region [%4.4s] (%p) [%s]",
       acpi_ut_get_node_name(region_obj->region.node),
       region_obj,
       acpi_ut_get_region_name(region_obj->region.
          space_id)));

  return_ACPI_STATUS(AE_NOT_EXIST);
 }





 if (!(region_obj->region.flags & AOPOBJ_SETUP_COMPLETE)) {



  region_setup = handler_desc->address_space.setup;
  if (!region_setup) {



   ACPI_ERROR((AE_INFO,
        "No init routine for region(%p) [%s]",
        region_obj,
        acpi_ut_get_region_name(region_obj->region.
           space_id)));
   return_ACPI_STATUS(AE_NOT_EXIST);
  }






  acpi_ex_exit_interpreter();

  status = region_setup(region_obj, ACPI_REGION_ACTIVATE,
          handler_desc->address_space.context,
          &region_context);



  acpi_ex_enter_interpreter();



  if (ACPI_FAILURE(status)) {
   ACPI_EXCEPTION((AE_INFO, status,
     "During region initialization: [%s]",
     acpi_ut_get_region_name(region_obj->
        region.
        space_id)));
   return_ACPI_STATUS(status);
  }



  if (!(region_obj->region.flags & AOPOBJ_SETUP_COMPLETE)) {
   region_obj->region.flags |= AOPOBJ_SETUP_COMPLETE;

   if (region_obj2->extra.region_context) {



    ACPI_FREE(region_context);
   } else {




    region_obj2->extra.region_context =
        region_context;
   }
  }
 }



 handler = handler_desc->address_space.handler;

 ACPI_DEBUG_PRINT((ACPI_DB_OPREGION,
     "Handler %p (@%p) Address %8.8X%8.8X [%s]\n",
     &region_obj->region.handler->address_space, handler,
     ACPI_FORMAT_NATIVE_UINT(region_obj->region.address +
        region_offset),
     acpi_ut_get_region_name(region_obj->region.
        space_id)));

 if (!(handler_desc->address_space.handler_flags &
       ACPI_ADDR_HANDLER_DEFAULT_INSTALLED)) {





  acpi_ex_exit_interpreter();
 }



 status = handler(function,
    (region_obj->region.address + region_offset),
    bit_width, value, handler_desc->address_space.context,
    region_obj2->extra.region_context);

 if (ACPI_FAILURE(status)) {
  ACPI_EXCEPTION((AE_INFO, status, "Returned by Handler for [%s]",
    acpi_ut_get_region_name(region_obj->region.
       space_id)));
 }

 if (!(handler_desc->address_space.handler_flags &
       ACPI_ADDR_HANDLER_DEFAULT_INSTALLED)) {




  acpi_ex_enter_interpreter();
 }

 return_ACPI_STATUS(status);
}
