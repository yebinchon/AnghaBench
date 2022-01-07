
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ value; } ;
struct TYPE_8__ {int count; union acpi_operand_object** elements; } ;
struct TYPE_6__ {struct acpi_namespace_node* node; } ;
struct TYPE_5__ {scalar_t__ type; } ;
union acpi_operand_object {TYPE_3__ integer; TYPE_4__ package; TYPE_2__ reference; TYPE_1__ common; } ;
typedef scalar_t__ u32 ;
struct acpi_namespace_node {int dummy; } ;
struct acpi_gpe_walk_info {struct acpi_gpe_block_info* gpe_block; struct acpi_namespace_node* gpe_device; } ;
struct acpi_gpe_event_info {int flags; } ;
struct acpi_gpe_block_info {scalar_t__ block_base_number; int register_count; struct acpi_gpe_event_info* event_info; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 int ACPI_BTYPE_PACKAGE ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_GPE_DISABLE ;
 int ACPI_GPE_RUN_ENABLED ;
 int ACPI_GPE_TYPE_WAKE ;
 int ACPI_GPE_WAKE_ENABLED ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ;
 scalar_t__ ACPI_TYPE_PACKAGE ;
 int AE_OK ;
 int METHOD_NAME__PRW ;
 int acpi_ev_set_gpe_type (struct acpi_gpe_event_info*,int ) ;
 int acpi_ev_update_gpe_enable_masks (struct acpi_gpe_event_info*,int ) ;
 struct acpi_namespace_node* acpi_gbl_fadt_gpe_device ;
 int acpi_ut_evaluate_object (int ,int ,int ,union acpi_operand_object**) ;
 int acpi_ut_remove_reference (union acpi_operand_object*) ;
 int ev_match_prw_and_gpe ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static acpi_status
acpi_ev_match_prw_and_gpe(acpi_handle obj_handle,
     u32 level, void *info, void **return_value)
{
 struct acpi_gpe_walk_info *gpe_info = (void *)info;
 struct acpi_namespace_node *gpe_device;
 struct acpi_gpe_block_info *gpe_block;
 struct acpi_namespace_node *target_gpe_device;
 struct acpi_gpe_event_info *gpe_event_info;
 union acpi_operand_object *pkg_desc;
 union acpi_operand_object *obj_desc;
 u32 gpe_number;
 acpi_status status;

 ACPI_FUNCTION_TRACE(ev_match_prw_and_gpe);



 status = acpi_ut_evaluate_object(obj_handle, METHOD_NAME__PRW,
      ACPI_BTYPE_PACKAGE, &pkg_desc);
 if (ACPI_FAILURE(status)) {



  return_ACPI_STATUS(AE_OK);
 }



 if (pkg_desc->package.count < 2) {
  goto cleanup;
 }



 gpe_device = gpe_info->gpe_device;
 gpe_block = gpe_info->gpe_block;





 obj_desc = pkg_desc->package.elements[0];

 if (obj_desc->common.type == ACPI_TYPE_INTEGER) {



  target_gpe_device = acpi_gbl_fadt_gpe_device;



  gpe_number = (u32) obj_desc->integer.value;
 } else if (obj_desc->common.type == ACPI_TYPE_PACKAGE) {



  if ((obj_desc->package.count < 2) ||
      ((obj_desc->package.elements[0])->common.type !=
       ACPI_TYPE_LOCAL_REFERENCE) ||
      ((obj_desc->package.elements[1])->common.type !=
       ACPI_TYPE_INTEGER)) {
   goto cleanup;
  }



  target_gpe_device =
      obj_desc->package.elements[0]->reference.node;
  gpe_number = (u32) obj_desc->package.elements[1]->integer.value;
 } else {


  goto cleanup;
 }
 if ((gpe_device == target_gpe_device) &&
     (gpe_number >= gpe_block->block_base_number) &&
     (gpe_number < gpe_block->block_base_number +
      (gpe_block->register_count * 8))) {
  gpe_event_info = &gpe_block->event_info[gpe_number -
       gpe_block->
       block_base_number];



  gpe_event_info->flags &=
      ~(ACPI_GPE_WAKE_ENABLED | ACPI_GPE_RUN_ENABLED);

  status =
      acpi_ev_set_gpe_type(gpe_event_info, ACPI_GPE_TYPE_WAKE);
  if (ACPI_FAILURE(status)) {
   goto cleanup;
  }

  status =
      acpi_ev_update_gpe_enable_masks(gpe_event_info,
          ACPI_GPE_DISABLE);
 }

      cleanup:
 acpi_ut_remove_reference(pkg_desc);
 return_ACPI_STATUS(AE_OK);
}
