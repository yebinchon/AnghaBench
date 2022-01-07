
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union acpi_operand_object {int dummy; } acpi_operand_object ;
struct TYPE_2__ {int * this_target_obj; } ;
union acpi_generic_state {TYPE_1__ pkg; } ;
typedef int u8 ;
struct acpi_pkg_info {int num_packages; int length; } ;
typedef int acpi_status ;
typedef int acpi_size ;




 int ACPI_FAILURE (int ) ;
 int AE_BAD_PARAMETER ;
 int AE_OK ;
 int acpi_ut_get_simple_object_size (union acpi_operand_object*,int *) ;

__attribute__((used)) static acpi_status
acpi_ut_get_element_length(u8 object_type,
      union acpi_operand_object *source_object,
      union acpi_generic_state *state, void *context)
{
 acpi_status status = AE_OK;
 struct acpi_pkg_info *info = (struct acpi_pkg_info *)context;
 acpi_size object_space;

 switch (object_type) {
 case 128:





  status =
      acpi_ut_get_simple_object_size(source_object,
         &object_space);
  if (ACPI_FAILURE(status)) {
   return (status);
  }

  info->length += object_space;
  break;

 case 129:



  info->num_packages++;
  state->pkg.this_target_obj = ((void*)0);
  break;

 default:



  return (AE_BAD_PARAMETER);
 }

 return (status);
}
