
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
union acpi_object {TYPE_1__ integer; int type; } ;
struct delayed_led_classdev {int dummy; } ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
struct acpi_device {int handle; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_4__ {struct acpi_device* bus_priv; } ;


 int ACPI_TYPE_INTEGER ;
 int acpi_evaluate_integer (int ,char*,struct acpi_object_list*,unsigned long long*) ;
 TYPE_2__ lis3_dev ;

__attribute__((used)) static void hpled_set(struct delayed_led_classdev *led_cdev, enum led_brightness value)
{
 struct acpi_device *dev = lis3_dev.bus_priv;
 unsigned long long ret;
 union acpi_object in_obj[1];
 struct acpi_object_list args = { 1, in_obj };

 in_obj[0].type = ACPI_TYPE_INTEGER;
 in_obj[0].integer.value = !!value;

 acpi_evaluate_integer(dev->handle, "ALED", &args, &ret);
}
