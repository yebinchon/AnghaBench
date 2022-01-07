
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ _BCQ; scalar_t__ _BQC; } ;
struct acpi_video_device {TYPE_4__* brightness; TYPE_3__ cap; TYPE_1__* dev; } ;
typedef int acpi_status ;
struct TYPE_6__ {scalar_t__ _BCL_reversed; scalar_t__ _BQC_use_index; } ;
struct TYPE_8__ {int count; unsigned long long* levels; unsigned long long curr; TYPE_2__ flags; } ;
struct TYPE_5__ {int handle; } ;


 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_WARNING (int ) ;
 int AE_INFO ;
 int AE_OK ;
 int acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 scalar_t__ bqc_offset_aml_bug_workaround ;

__attribute__((used)) static int
acpi_video_device_lcd_get_level_current(struct acpi_video_device *device,
     unsigned long long *level)
{
 acpi_status status = AE_OK;
 int i;

 if (device->cap._BQC || device->cap._BCQ) {
  char *buf = device->cap._BQC ? "_BQC" : "_BCQ";

  status = acpi_evaluate_integer(device->dev->handle, buf,
      ((void*)0), level);
  if (ACPI_SUCCESS(status)) {
   if (device->brightness->flags._BQC_use_index) {
    if (device->brightness->flags._BCL_reversed)
     *level = device->brightness->count
         - 3 - (*level);
    *level = device->brightness->levels[*level + 2];

   }
   *level += bqc_offset_aml_bug_workaround;
   for (i = 2; i < device->brightness->count; i++)
    if (device->brightness->levels[i] == *level) {
     device->brightness->curr = *level;
     return 0;
   }

   ACPI_WARNING((AE_INFO, "%s returned an invalid level",
      buf));
   device->cap._BQC = device->cap._BCQ = 0;
  } else {







   ACPI_WARNING((AE_INFO, "Evaluating %s failed", buf));
   device->cap._BQC = device->cap._BCQ = 0;
  }
 }

 *level = device->brightness->curr;
 return 0;
}
