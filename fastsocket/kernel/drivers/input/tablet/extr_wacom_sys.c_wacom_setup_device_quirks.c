
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_features {scalar_t__ device_type; int x_max; int y_max; scalar_t__ type; int quirks; } ;


 scalar_t__ BTN_TOOL_FINGER ;
 scalar_t__ TABLETPC ;
 scalar_t__ TABLETPC2FG ;
 int WACOM_QUIRK_MULTI_INPUT ;

void wacom_setup_device_quirks(struct wacom_features *features)
{

 if (features->device_type == BTN_TOOL_FINGER && !features->x_max) {
  features->x_max = 1023;
  features->y_max = 1023;
 }


 if (features->type == TABLETPC || features->type == TABLETPC2FG)
  features->quirks |= WACOM_QUIRK_MULTI_INPUT;
}
