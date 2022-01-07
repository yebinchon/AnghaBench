
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int flags; } ;
struct TYPE_6__ {int flags; scalar_t__ length; int address; int space_id; struct acpi_namespace_node* node; } ;
struct TYPE_5__ {int aml_start; int aml_length; } ;
union acpi_operand_object {TYPE_4__ common; TYPE_2__ region; TYPE_1__ extra; } ;
struct TYPE_7__ {int ascii; } ;
struct acpi_namespace_node {TYPE_3__ name; int parent; } ;
typedef int acpi_status ;
typedef int acpi_size ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_EXEC (int ) ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,union acpi_operand_object*) ;
 int ACPI_TYPE_REGION ;
 int AE_INFO ;
 int AE_NOT_EXIST ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int AOPOBJ_INVALID ;
 int acpi_ds_execute_arguments (struct acpi_namespace_node*,int ,int ,int ) ;
 union acpi_operand_object* acpi_ns_get_secondary_object (union acpi_operand_object*) ;
 int acpi_os_validate_address (int ,int ,int ,int ) ;
 int acpi_ut_display_init_pathname (int ,struct acpi_namespace_node*,int *) ;
 int acpi_ut_get_node_name (struct acpi_namespace_node*) ;
 int ds_get_region_arguments ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_ds_get_region_arguments(union acpi_operand_object *obj_desc)
{
 struct acpi_namespace_node *node;
 acpi_status status;
 union acpi_operand_object *extra_desc;

 ACPI_FUNCTION_TRACE_PTR(ds_get_region_arguments, obj_desc);

 if (obj_desc->region.flags & AOPOBJ_DATA_VALID) {
  return_ACPI_STATUS(AE_OK);
 }

 extra_desc = acpi_ns_get_secondary_object(obj_desc);
 if (!extra_desc) {
  return_ACPI_STATUS(AE_NOT_EXIST);
 }



 node = obj_desc->region.node;

 ACPI_DEBUG_EXEC(acpi_ut_display_init_pathname
   (ACPI_TYPE_REGION, node, ((void*)0)));

 ACPI_DEBUG_PRINT((ACPI_DB_EXEC, "[%4.4s] OpRegion Arg Init at AML %p\n",
     acpi_ut_get_node_name(node),
     extra_desc->extra.aml_start));



 status = acpi_ds_execute_arguments(node, node->parent,
        extra_desc->extra.aml_length,
        extra_desc->extra.aml_start);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }



 status = acpi_os_validate_address(obj_desc->region.space_id,
       obj_desc->region.address,
       (acpi_size) obj_desc->region.length,
       acpi_ut_get_node_name(node));

 if (ACPI_FAILURE(status)) {





  ACPI_EXCEPTION((AE_INFO, status,
    "During address validation of OpRegion [%4.4s]",
    node->name.ascii));
  obj_desc->common.flags |= AOPOBJ_INVALID;
  status = AE_OK;
 }

 return_ACPI_STATUS(status);
}
