
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int value; } ;
union acpi_object {TYPE_1__ integer; int member_0; } ;
struct acpi_video_device {TYPE_5__* backlight; TYPE_3__* brightness; TYPE_2__* dev; } ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
struct TYPE_9__ {int brightness; } ;
struct TYPE_10__ {TYPE_4__ props; } ;
struct TYPE_8__ {int curr; int count; int* levels; } ;
struct TYPE_7__ {int handle; } ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int) ;
 int ACPI_TYPE_INTEGER ;
 int AE_INFO ;
 int EINVAL ;
 int EIO ;
 int acpi_evaluate_object (int ,char*,struct acpi_object_list*,int *) ;

__attribute__((used)) static int
acpi_video_device_lcd_set_level(struct acpi_video_device *device, int level)
{
 int status;
 union acpi_object arg0 = { ACPI_TYPE_INTEGER };
 struct acpi_object_list args = { 1, &arg0 };
 int state;

 arg0.integer.value = level;

 status = acpi_evaluate_object(device->dev->handle, "_BCM",
          &args, ((void*)0));
 if (ACPI_FAILURE(status)) {
  ACPI_ERROR((AE_INFO, "Evaluating _BCM failed"));
  return -EIO;
 }

 device->brightness->curr = level;
 for (state = 2; state < device->brightness->count; state++)
  if (level == device->brightness->levels[state]) {
   if (device->backlight)
    device->backlight->props.brightness = state - 2;
   return 0;
  }

 ACPI_ERROR((AE_INFO, "Current brightness invalid"));
 return -EINVAL;
}
