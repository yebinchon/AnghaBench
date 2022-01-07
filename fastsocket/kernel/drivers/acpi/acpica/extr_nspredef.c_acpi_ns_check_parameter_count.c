
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int param_count; } ;
union acpi_predefined_info {TYPE_3__ info; } ;
typedef int u32 ;
struct acpi_namespace_node {scalar_t__ type; int flags; TYPE_2__* object; } ;
struct TYPE_4__ {int param_count; } ;
struct TYPE_5__ {TYPE_1__ method; } ;


 scalar_t__ ACPI_TYPE_METHOD ;
 int ACPI_UINT32_MAX ;
 int ACPI_WARN_ALWAYS ;
 int ACPI_WARN_PREDEFINED (int ) ;
 int AE_INFO ;

void
acpi_ns_check_parameter_count(char *pathname,
         struct acpi_namespace_node *node,
         u32 user_param_count,
         const union acpi_predefined_info *predefined)
{
 u32 param_count;
 u32 required_params_current;
 u32 required_params_old;



 param_count = 0;
 if (node->type == ACPI_TYPE_METHOD) {
  param_count = node->object->method.param_count;
 }

 if (!predefined) {
  if (user_param_count < param_count) {
   ACPI_WARN_PREDEFINED((AE_INFO, pathname,
           ACPI_WARN_ALWAYS,
           "Insufficient arguments - needs %u, found %u",
           param_count, user_param_count));
  } else if (user_param_count > param_count) {
   ACPI_WARN_PREDEFINED((AE_INFO, pathname,
           ACPI_WARN_ALWAYS,
           "Excess arguments - needs %u, found %u",
           param_count, user_param_count));
  }
  return;
 }





 required_params_current = predefined->info.param_count & 0x0F;
 required_params_old = predefined->info.param_count >> 4;

 if (user_param_count != ACPI_UINT32_MAX) {
  if ((user_param_count != required_params_current) &&
      (user_param_count != required_params_old)) {
   ACPI_WARN_PREDEFINED((AE_INFO, pathname,
           ACPI_WARN_ALWAYS,
           "Parameter count mismatch - "
           "caller passed %u, ACPI requires %u",
           user_param_count,
           required_params_current));
  }
 }






 if ((param_count != required_params_current) &&
     (param_count != required_params_old)) {
  ACPI_WARN_PREDEFINED((AE_INFO, pathname, node->flags,
          "Parameter count mismatch - ASL declared %u, ACPI requires %u",
          param_count, required_params_current));
 }
}
