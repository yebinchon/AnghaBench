
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
union acpi_object {scalar_t__ type; TYPE_1__ integer; } ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
struct acpi_buffer {int length; union acpi_object* pointer; } ;
typedef int out_obj ;
typedef int acpi_status ;
typedef int * acpi_handle ;
struct TYPE_4__ {int acpi_handle; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 int AE_OK ;
 int ENODEV ;
 int FUJLAPTOP_DBG_ERROR ;
 int FUJLAPTOP_DBG_TRACE ;
 int FUJLAPTOP_DBG_WARN ;
 int acpi_evaluate_object (int *,int *,struct acpi_object_list*,struct acpi_buffer*) ;
 int acpi_get_handle (int ,char*,int **) ;
 TYPE_2__* fujitsu_hotkey ;
 int vdbg_printk (int ,char*,...) ;

__attribute__((used)) static int call_fext_func(int cmd, int arg0, int arg1, int arg2)
{
 acpi_status status = AE_OK;
 union acpi_object params[4] = {
 { .type = ACPI_TYPE_INTEGER },
 { .type = ACPI_TYPE_INTEGER },
 { .type = ACPI_TYPE_INTEGER },
 { .type = ACPI_TYPE_INTEGER }
 };
 struct acpi_object_list arg_list = { 4, &params[0] };
 struct acpi_buffer output;
 union acpi_object out_obj;
 acpi_handle handle = ((void*)0);

 status = acpi_get_handle(fujitsu_hotkey->acpi_handle, "FUNC", &handle);
 if (ACPI_FAILURE(status)) {
  vdbg_printk(FUJLAPTOP_DBG_ERROR,
    "FUNC interface is not present\n");
  return -ENODEV;
 }

 params[0].integer.value = cmd;
 params[1].integer.value = arg0;
 params[2].integer.value = arg1;
 params[3].integer.value = arg2;

 output.length = sizeof(out_obj);
 output.pointer = &out_obj;

 status = acpi_evaluate_object(handle, ((void*)0), &arg_list, &output);
 if (ACPI_FAILURE(status)) {
  vdbg_printk(FUJLAPTOP_DBG_WARN,
   "FUNC 0x%x (args 0x%x, 0x%x, 0x%x) call failed\n",
    cmd, arg0, arg1, arg2);
  return -ENODEV;
 }

 if (out_obj.type != ACPI_TYPE_INTEGER) {
  vdbg_printk(FUJLAPTOP_DBG_WARN,
   "FUNC 0x%x (args 0x%x, 0x%x, 0x%x) did not "
   "return an integer\n",
   cmd, arg0, arg1, arg2);
  return -ENODEV;
 }

 vdbg_printk(FUJLAPTOP_DBG_TRACE,
  "FUNC 0x%x (args 0x%x, 0x%x, 0x%x) returned 0x%x\n",
   cmd, arg0, arg1, arg2, (int)out_obj.integer.value);
 return out_obj.integer.value;
}
