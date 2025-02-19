
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
union acpi_object {TYPE_1__ integer; int member_0; } ;
struct acpi_video_device {TYPE_2__* dev; } ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
struct TYPE_4__ {int handle; } ;


 int ACPI_TYPE_INTEGER ;
 int acpi_evaluate_integer (int ,char*,struct acpi_object_list*,unsigned long long*) ;

__attribute__((used)) static int
acpi_video_device_set_state(struct acpi_video_device *device, int state)
{
 int status;
 union acpi_object arg0 = { ACPI_TYPE_INTEGER };
 struct acpi_object_list args = { 1, &arg0 };
 unsigned long long ret;


 arg0.integer.value = state;
 status = acpi_evaluate_integer(device->dev->handle, "_DSS", &args, &ret);

 return status;
}
