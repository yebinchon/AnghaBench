
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
union acpi_object {TYPE_1__ integer; int member_0; } ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
typedef int acpi_status ;
typedef int * acpi_handle ;
struct TYPE_4__ {int max_brightness; int acpi_handle; } ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_TYPE_INTEGER ;
 int AE_OK ;
 int EINVAL ;
 int ENODEV ;
 int FUJLAPTOP_DBG_ERROR ;
 int FUJLAPTOP_DBG_TRACE ;
 int acpi_evaluate_object (int *,int *,struct acpi_object_list*,int *) ;
 int acpi_get_handle (int ,char*,int **) ;
 TYPE_2__* fujitsu ;
 int vdbg_printk (int ,char*,...) ;

__attribute__((used)) static int set_lcd_level(int level)
{
 acpi_status status = AE_OK;
 union acpi_object arg0 = { ACPI_TYPE_INTEGER };
 struct acpi_object_list arg_list = { 1, &arg0 };
 acpi_handle handle = ((void*)0);

 vdbg_printk(FUJLAPTOP_DBG_TRACE, "set lcd level via SBLL [%d]\n",
      level);

 if (level < 0 || level >= fujitsu->max_brightness)
  return -EINVAL;

 status = acpi_get_handle(fujitsu->acpi_handle, "SBLL", &handle);
 if (ACPI_FAILURE(status)) {
  vdbg_printk(FUJLAPTOP_DBG_ERROR, "SBLL not present\n");
  return -ENODEV;
 }

 arg0.integer.value = level;

 status = acpi_evaluate_object(handle, ((void*)0), &arg_list, ((void*)0));
 if (ACPI_FAILURE(status))
  return -ENODEV;

 return 0;
}
