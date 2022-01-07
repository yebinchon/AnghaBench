
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
struct acpi_object_list {union acpi_object* pointer; int count; } ;
typedef scalar_t__ acpi_status ;


 int ACPI_TYPE_INTEGER ;
 scalar_t__ AE_OK ;
 int ARRAY_SIZE (union acpi_object*) ;
 scalar_t__ acpi_evaluate_object (int *,char*,struct acpi_object_list*,int *) ;

__attribute__((used)) static int write_acpi_int(const char *methodName, int val)
{
 struct acpi_object_list params;
 union acpi_object in_objs[1];
 acpi_status status;

 params.count = ARRAY_SIZE(in_objs);
 params.pointer = in_objs;
 in_objs[0].type = ACPI_TYPE_INTEGER;
 in_objs[0].integer.value = val;

 status = acpi_evaluate_object(((void*)0), (char *)methodName, &params, ((void*)0));
 return (status == AE_OK);
}
