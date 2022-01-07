
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct acpi_handle_list {size_t count; int * handles; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_POWER_RESOURCE_STATE_ON ;
 int EINVAL ;
 int acpi_power_get_state (int ,int*) ;

__attribute__((used)) static int acpi_power_get_list_state(struct acpi_handle_list *list, int *state)
{
 int result = 0, state1;
 u32 i = 0;


 if (!list || !state)
  return -EINVAL;




 for (i = 0; i < list->count; i++) {





  result = acpi_power_get_state(list->handles[i], &state1);
  if (result)
   return result;

  *state = state1;

  if (*state != ACPI_POWER_RESOURCE_STATE_ON)
   break;
 }

 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Resource list is %s\n",
     *state ? "on" : "off"));

 return result;
}
