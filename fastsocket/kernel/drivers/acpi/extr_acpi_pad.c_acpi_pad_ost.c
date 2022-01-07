
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; void* pointer; } ;
struct TYPE_4__ {int value; } ;
union acpi_object {TYPE_1__ buffer; TYPE_2__ integer; int type; } ;
typedef int uint32_t ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
typedef int acpi_handle ;


 int ACPI_PROCESSOR_AGGREGATOR_NOTIFY ;
 int ACPI_TYPE_BUFFER ;
 int ACPI_TYPE_INTEGER ;
 int acpi_evaluate_object (int ,char*,struct acpi_object_list*,int *) ;

__attribute__((used)) static void acpi_pad_ost(acpi_handle handle, int stat,
 uint32_t idle_cpus)
{
 union acpi_object params[3] = {
  {.type = ACPI_TYPE_INTEGER,},
  {.type = ACPI_TYPE_INTEGER,},
  {.type = ACPI_TYPE_BUFFER,},
 };
 struct acpi_object_list arg_list = {3, params};

 params[0].integer.value = ACPI_PROCESSOR_AGGREGATOR_NOTIFY;
 params[1].integer.value = stat;
 params[2].buffer.length = 4;
 params[2].buffer.pointer = (void *)&idle_cpus;
 acpi_evaluate_object(handle, "_OST", &arg_list, ((void*)0));
}
