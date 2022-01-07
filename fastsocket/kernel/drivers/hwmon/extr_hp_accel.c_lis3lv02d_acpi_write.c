
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; void* type; } ;
typedef int u8 ;
struct lis3lv02d {struct acpi_device* bus_priv; } ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
struct acpi_device {int handle; } ;


 void* ACPI_TYPE_INTEGER ;
 scalar_t__ AE_OK ;
 int EINVAL ;
 scalar_t__ acpi_evaluate_integer (int ,char*,struct acpi_object_list*,unsigned long long*) ;

int lis3lv02d_acpi_write(struct lis3lv02d *lis3, int reg, u8 val)
{
 struct acpi_device *dev = lis3->bus_priv;
 unsigned long long ret;
 union acpi_object in_obj[2];
 struct acpi_object_list args = { 2, in_obj };

 in_obj[0].type = ACPI_TYPE_INTEGER;
 in_obj[0].integer.value = reg;
 in_obj[1].type = ACPI_TYPE_INTEGER;
 in_obj[1].integer.value = val;

 if (acpi_evaluate_integer(dev->handle, "ALWR", &args, &ret) != AE_OK)
  return -EINVAL;

 return 0;
}
