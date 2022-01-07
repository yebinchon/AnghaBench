
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
struct acpi_object_list {int count; union acpi_object* pointer; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_INTEGER ;
 int acpi_evaluate_integer (int ,int *,struct acpi_object_list*,unsigned long long*) ;
 int kled_get_handle ;
 int pr_warning (char*) ;

__attribute__((used)) static int get_kled_lvl(void)
{
 unsigned long long kblv;
 struct acpi_object_list params;
 union acpi_object in_obj;
 acpi_status rv;

 params.count = 1;
 params.pointer = &in_obj;
 in_obj.type = ACPI_TYPE_INTEGER;
 in_obj.integer.value = 2;

 rv = acpi_evaluate_integer(kled_get_handle, ((void*)0), &params, &kblv);
 if (ACPI_FAILURE(rv)) {
  pr_warning("Error reading kled level\n");
  return 0;
 }
 return kblv;
}
