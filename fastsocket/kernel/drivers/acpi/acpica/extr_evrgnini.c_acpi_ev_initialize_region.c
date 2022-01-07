
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


struct TYPE_16__ {scalar_t__ space_id; union acpi_operand_object* next; } ;
struct TYPE_15__ {union acpi_operand_object* handler; } ;
struct TYPE_14__ {union acpi_operand_object* handler; } ;
struct TYPE_13__ {union acpi_operand_object* handler; } ;
struct TYPE_12__ {struct acpi_namespace_node* method_REG; } ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {scalar_t__ space_id; int * handler; TYPE_1__* node; } ;
union acpi_operand_object {TYPE_8__ address_space; TYPE_7__ thermal_zone; TYPE_6__ processor; TYPE_5__ device; TYPE_4__ extra; TYPE_3__ common; TYPE_2__ region; } ;
typedef int u8 ;
struct acpi_namespace_node {int type; struct acpi_namespace_node* parent; } ;
typedef int acpi_status ;
typedef int acpi_name ;
typedef scalar_t__ acpi_adr_space_type ;
struct TYPE_9__ {struct acpi_namespace_node* parent; } ;


 int ACPI_DB_OPREGION ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_U32 (int ,int ) ;
 int ACPI_MTX_NAMESPACE ;
 scalar_t__ ACPI_SUCCESS (int ) ;

 int ACPI_TYPE_METHOD ;


 int AE_BAD_PARAMETER ;
 int AE_NOT_EXIST ;
 int AE_OK ;
 int AOPOBJ_OBJECT_INITIALIZED ;
 int AOPOBJ_SETUP_COMPLETE ;
 scalar_t__ METHOD_NAME__REG ;
 int acpi_ev_attach_region (union acpi_operand_object*,union acpi_operand_object*,int ) ;
 int acpi_ev_execute_reg_method (union acpi_operand_object*,int) ;
 union acpi_operand_object* acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 union acpi_operand_object* acpi_ns_get_secondary_object (union acpi_operand_object*) ;
 int acpi_ns_search_one_scope (int ,struct acpi_namespace_node*,int ,struct acpi_namespace_node**) ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_get_region_name (scalar_t__) ;
 int acpi_ut_release_mutex (int ) ;
 int ev_initialize_region ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ev_initialize_region(union acpi_operand_object *region_obj,
     u8 acpi_ns_locked)
{
 union acpi_operand_object *handler_obj;
 union acpi_operand_object *obj_desc;
 acpi_adr_space_type space_id;
 struct acpi_namespace_node *node;
 acpi_status status;
 struct acpi_namespace_node *method_node;
 acpi_name *reg_name_ptr = (acpi_name *) METHOD_NAME__REG;
 union acpi_operand_object *region_obj2;

 ACPI_FUNCTION_TRACE_U32(ev_initialize_region, acpi_ns_locked);

 if (!region_obj) {
  return_ACPI_STATUS(AE_BAD_PARAMETER);
 }

 if (region_obj->common.flags & AOPOBJ_OBJECT_INITIALIZED) {
  return_ACPI_STATUS(AE_OK);
 }

 region_obj2 = acpi_ns_get_secondary_object(region_obj);
 if (!region_obj2) {
  return_ACPI_STATUS(AE_NOT_EXIST);
 }

 node = region_obj->region.node->parent;
 space_id = region_obj->region.space_id;



 region_obj->region.handler = ((void*)0);
 region_obj2->extra.method_REG = ((void*)0);
 region_obj->common.flags &= ~(AOPOBJ_SETUP_COMPLETE);
 region_obj->common.flags |= AOPOBJ_OBJECT_INITIALIZED;



 status =
     acpi_ns_search_one_scope(*reg_name_ptr, node, ACPI_TYPE_METHOD,
         &method_node);
 if (ACPI_SUCCESS(status)) {





  region_obj2->extra.method_REG = method_node;
 }





 while (node) {



  handler_obj = ((void*)0);
  obj_desc = acpi_ns_get_attached_object(node);
  if (obj_desc) {



   switch (node->type) {
   case 130:

    handler_obj = obj_desc->device.handler;
    break;

   case 129:

    handler_obj = obj_desc->processor.handler;
    break;

   case 128:

    handler_obj = obj_desc->thermal_zone.handler;
    break;

   default:

    break;
   }

   while (handler_obj) {



    if (handler_obj->address_space.space_id ==
        space_id) {



     ACPI_DEBUG_PRINT((ACPI_DB_OPREGION,
         "Found handler %p for region %p in obj %p\n",
         handler_obj,
         region_obj,
         obj_desc));

     status =
         acpi_ev_attach_region(handler_obj,
          region_obj,
          acpi_ns_locked);





     if (acpi_ns_locked) {
      status =
          acpi_ut_release_mutex
          (ACPI_MTX_NAMESPACE);
      if (ACPI_FAILURE(status)) {
       return_ACPI_STATUS
           (status);
      }
     }

     status =
         acpi_ev_execute_reg_method
         (region_obj, 1);

     if (acpi_ns_locked) {
      status =
          acpi_ut_acquire_mutex
          (ACPI_MTX_NAMESPACE);
      if (ACPI_FAILURE(status)) {
       return_ACPI_STATUS
           (status);
      }
     }

     return_ACPI_STATUS(AE_OK);
    }



    handler_obj = handler_obj->address_space.next;
   }
  }



  node = node->parent;
 }



 ACPI_DEBUG_PRINT((ACPI_DB_OPREGION,
     "No handler for RegionType %s(%X) (RegionObj %p)\n",
     acpi_ut_get_region_name(space_id), space_id,
     region_obj));

 return_ACPI_STATUS(AE_NOT_EXIST);
}
