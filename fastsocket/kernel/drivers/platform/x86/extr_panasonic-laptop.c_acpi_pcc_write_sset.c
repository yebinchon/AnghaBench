
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; int type; } ;
union acpi_object {TYPE_1__ integer; } ;
struct pcc_acpi {int handle; } ;
struct acpi_object_list {union acpi_object* pointer; int count; } ;
typedef scalar_t__ acpi_status ;


 int ACPI_TYPE_INTEGER ;
 scalar_t__ AE_OK ;
 int ARRAY_SIZE (union acpi_object*) ;
 int METHOD_HKEY_SSET ;
 scalar_t__ acpi_evaluate_object (int ,int ,struct acpi_object_list*,int *) ;

__attribute__((used)) static int acpi_pcc_write_sset(struct pcc_acpi *pcc, int func, int val)
{
 union acpi_object in_objs[] = {
  { .integer.type = ACPI_TYPE_INTEGER,
    .integer.value = func, },
  { .integer.type = ACPI_TYPE_INTEGER,
    .integer.value = val, },
 };
 struct acpi_object_list params = {
  .count = ARRAY_SIZE(in_objs),
  .pointer = in_objs,
 };
 acpi_status status = AE_OK;

 status = acpi_evaluate_object(pcc->handle, METHOD_HKEY_SSET,
          &params, ((void*)0));

 return status == AE_OK;
}
