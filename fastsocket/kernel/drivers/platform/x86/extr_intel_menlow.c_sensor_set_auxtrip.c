
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int member_0; } ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
typedef int acpi_status ;
typedef int acpi_handle ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_INTEGER ;
 int EINVAL ;
 int EIO ;
 int GET_AUX0 ;
 int GET_AUX1 ;
 int SET_AUX0 ;
 int SET_AUX1 ;
 int acpi_evaluate_integer (int ,int ,struct acpi_object_list*,unsigned long long*) ;

__attribute__((used)) static int sensor_set_auxtrip(acpi_handle handle, int index, int value)
{
 acpi_status status;
 union acpi_object arg = {
  ACPI_TYPE_INTEGER
 };
 struct acpi_object_list args = {
  1, &arg
 };
 unsigned long long temp;

 if (index != 0 && index != 1)
  return -EINVAL;

 status = acpi_evaluate_integer(handle, index ? GET_AUX0 : GET_AUX1,
           ((void*)0), &temp);
 if (ACPI_FAILURE(status))
  return -EIO;
 if ((index && value < temp) || (!index && value > temp))
  return -EINVAL;

 arg.integer.value = value;
 status = acpi_evaluate_integer(handle, index ? SET_AUX1 : SET_AUX0,
           &args, &temp);
 if (ACPI_FAILURE(status))
  return -EIO;



 return 0;
}
