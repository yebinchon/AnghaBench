
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int u16 ;
struct acpi_evaluate_info {scalar_t__* parameters; } ;


 int acpi_ut_update_object_reference (scalar_t__,int ) ;

__attribute__((used)) static void
acpi_ps_update_parameter_list(struct acpi_evaluate_info *info, u16 action)
{
 u32 i;

 if (info->parameters) {



  for (i = 0; info->parameters[i]; i++) {



   (void)acpi_ut_update_object_reference(info->
             parameters[i],
             action);
  }
 }
}
