
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct acpi_namespace_node {scalar_t__ owner_id; } ;
struct acpi_init_walk_info {scalar_t__ owner_id; int device_count; int method_count; int op_region_count; int object_count; } ;
typedef int acpi_status ;
typedef int acpi_object_type ;
typedef scalar_t__ acpi_handle ;


 int ACPI_EXCEPTION (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_ENTRY () ;



 int AE_INFO ;
 int AE_OK ;
 int acpi_ds_initialize_region (scalar_t__) ;
 int acpi_ns_get_type (scalar_t__) ;
 int acpi_ut_get_node_name (scalar_t__) ;

__attribute__((used)) static acpi_status
acpi_ds_init_one_object(acpi_handle obj_handle,
   u32 level, void *context, void **return_value)
{
 struct acpi_init_walk_info *info =
     (struct acpi_init_walk_info *)context;
 struct acpi_namespace_node *node =
     (struct acpi_namespace_node *)obj_handle;
 acpi_object_type type;
 acpi_status status;

 ACPI_FUNCTION_ENTRY();





 if (node->owner_id != info->owner_id) {
  return (AE_OK);
 }

 info->object_count++;



 type = acpi_ns_get_type(obj_handle);

 switch (type) {
 case 128:

  status = acpi_ds_initialize_region(obj_handle);
  if (ACPI_FAILURE(status)) {
   ACPI_EXCEPTION((AE_INFO, status,
     "During Region initialization %p [%4.4s]",
     obj_handle,
     acpi_ut_get_node_name(obj_handle)));
  }

  info->op_region_count++;
  break;

 case 129:

  info->method_count++;
  break;

 case 130:

  info->device_count++;
  break;

 default:
  break;
 }





 return (AE_OK);
}
