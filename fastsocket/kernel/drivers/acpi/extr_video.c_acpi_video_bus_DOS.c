
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; } ;
union acpi_object {TYPE_1__ integer; int member_0; } ;
struct acpi_video_bus {int dos_setting; TYPE_2__* device; } ;
struct acpi_object_list {int member_0; union acpi_object* member_1; } ;
typedef int acpi_integer ;
struct TYPE_4__ {int handle; } ;


 int ACPI_TYPE_INTEGER ;
 int acpi_evaluate_object (int ,char*,struct acpi_object_list*,int *) ;

__attribute__((used)) static int
acpi_video_bus_DOS(struct acpi_video_bus *video, int bios_flag, int lcd_flag)
{
 acpi_integer status = 0;
 union acpi_object arg0 = { ACPI_TYPE_INTEGER };
 struct acpi_object_list args = { 1, &arg0 };


 if (bios_flag < 0 || bios_flag > 3 || lcd_flag < 0 || lcd_flag > 1) {
  status = -1;
  goto Failed;
 }
 arg0.integer.value = (lcd_flag << 2) | bios_flag;
 video->dos_setting = arg0.integer.value;
 acpi_evaluate_object(video->device->handle, "_DOS", &args, ((void*)0));

      Failed:
 return status;
}
