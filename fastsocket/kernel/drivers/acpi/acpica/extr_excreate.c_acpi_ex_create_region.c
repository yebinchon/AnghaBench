
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {struct acpi_namespace_node* node; scalar_t__ length; scalar_t__ address; scalar_t__ space_id; } ;
struct TYPE_9__ {scalar_t__* aml_start; int aml_length; } ;
struct TYPE_8__ {union acpi_operand_object* next_object; } ;
union acpi_operand_object {TYPE_5__ region; TYPE_4__ extra; TYPE_3__ common; } ;
typedef scalar_t__ u8 ;
typedef int u32 ;
struct acpi_walk_state {TYPE_2__* op; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;
struct TYPE_6__ {struct acpi_namespace_node* node; } ;
struct TYPE_7__ {TYPE_1__ common; } ;


 int ACPI_DB_LOAD ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_NUM_PREDEFINED_REGIONS ;
 int ACPI_TYPE_REGION ;
 scalar_t__ ACPI_USER_REGION_BEGIN ;
 int AE_AML_INVALID_SPACE_ID ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int acpi_ns_attach_object (struct acpi_namespace_node*,union acpi_operand_object*,int ) ;
 scalar_t__ acpi_ns_get_attached_object (struct acpi_namespace_node*) ;
 union acpi_operand_object* acpi_ut_create_internal_object (int ) ;
 int acpi_ut_get_region_name (scalar_t__) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ex_create_region ;
 int return_ACPI_STATUS (int ) ;

acpi_status
acpi_ex_create_region(u8 * aml_start,
        u32 aml_length,
        u8 region_space, struct acpi_walk_state *walk_state)
{
 acpi_status status;
 union acpi_operand_object *obj_desc;
 struct acpi_namespace_node *node;
 union acpi_operand_object *region_obj2;

 ACPI_FUNCTION_TRACE(ex_create_region);



 node = walk_state->op->common.node;





 if (acpi_ns_get_attached_object(node)) {
  return_ACPI_STATUS(AE_OK);
 }





 if ((region_space >= ACPI_NUM_PREDEFINED_REGIONS) &&
     (region_space < ACPI_USER_REGION_BEGIN)) {
  ACPI_ERROR((AE_INFO, "Invalid AddressSpace type %X",
       region_space));
  return_ACPI_STATUS(AE_AML_INVALID_SPACE_ID);
 }

 ACPI_DEBUG_PRINT((ACPI_DB_LOAD, "Region Type - %s (%X)\n",
     acpi_ut_get_region_name(region_space), region_space));



 obj_desc = acpi_ut_create_internal_object(ACPI_TYPE_REGION);
 if (!obj_desc) {
  status = AE_NO_MEMORY;
  goto cleanup;
 }





 region_obj2 = obj_desc->common.next_object;
 region_obj2->extra.aml_start = aml_start;
 region_obj2->extra.aml_length = aml_length;



 obj_desc->region.space_id = region_space;
 obj_desc->region.address = 0;
 obj_desc->region.length = 0;
 obj_desc->region.node = node;



 status = acpi_ns_attach_object(node, obj_desc, ACPI_TYPE_REGION);

      cleanup:



 acpi_ut_remove_reference(obj_desc);
 return_ACPI_STATUS(status);
}
