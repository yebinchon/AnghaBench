
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
typedef union acpi_generic_state {int dummy; } acpi_generic_state ;
struct acpi_parse_obj_named {int dummy; } ;
struct acpi_parse_obj_common {int dummy; } ;
struct acpi_namespace_node {int dummy; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_MAX_EXTPARSE_CACHE_DEPTH ;
 int ACPI_MAX_NAMESPACE_CACHE_DEPTH ;
 int ACPI_MAX_OBJECT_CACHE_DEPTH ;
 int ACPI_MAX_PARSE_CACHE_DEPTH ;
 int ACPI_MAX_STATE_CACHE_DEPTH ;
 int AE_OK ;
 int acpi_gbl_global_list ;
 int acpi_gbl_namespace_cache ;
 int acpi_gbl_ns_node_list ;
 int acpi_gbl_operand_cache ;
 int acpi_gbl_ps_node_cache ;
 int acpi_gbl_ps_node_ext_cache ;
 int acpi_gbl_state_cache ;
 int acpi_os_create_cache (char*,int,int ,int *) ;
 int acpi_ut_create_list (char*,int,int *) ;

acpi_status acpi_ut_create_caches(void)
{
 acpi_status status;



 status =
     acpi_os_create_cache("Acpi-Namespace",
     sizeof(struct acpi_namespace_node),
     ACPI_MAX_NAMESPACE_CACHE_DEPTH,
     &acpi_gbl_namespace_cache);
 if (ACPI_FAILURE(status)) {
  return (status);
 }

 status =
     acpi_os_create_cache("Acpi-State", sizeof(union acpi_generic_state),
     ACPI_MAX_STATE_CACHE_DEPTH,
     &acpi_gbl_state_cache);
 if (ACPI_FAILURE(status)) {
  return (status);
 }

 status =
     acpi_os_create_cache("Acpi-Parse",
     sizeof(struct acpi_parse_obj_common),
     ACPI_MAX_PARSE_CACHE_DEPTH,
     &acpi_gbl_ps_node_cache);
 if (ACPI_FAILURE(status)) {
  return (status);
 }

 status =
     acpi_os_create_cache("Acpi-ParseExt",
     sizeof(struct acpi_parse_obj_named),
     ACPI_MAX_EXTPARSE_CACHE_DEPTH,
     &acpi_gbl_ps_node_ext_cache);
 if (ACPI_FAILURE(status)) {
  return (status);
 }

 status =
     acpi_os_create_cache("Acpi-Operand",
     sizeof(union acpi_operand_object),
     ACPI_MAX_OBJECT_CACHE_DEPTH,
     &acpi_gbl_operand_cache);
 if (ACPI_FAILURE(status)) {
  return (status);
 }
 return (AE_OK);
}
