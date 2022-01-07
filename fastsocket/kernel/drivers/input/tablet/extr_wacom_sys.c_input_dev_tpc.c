
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_wac {TYPE_1__* features; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {scalar_t__ device_type; int y_phy; int x_phy; } ;


 int ABS_RX ;
 int ABS_RY ;
 scalar_t__ BTN_TOOL_FINGER ;
 scalar_t__ BTN_TOOL_PEN ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;

void input_dev_tpc(struct input_dev *input_dev, struct wacom_wac *wacom_wac)
{
 if (wacom_wac->features->device_type == BTN_TOOL_FINGER ||
     wacom_wac->features->device_type == BTN_TOOL_PEN) {
  input_set_abs_params(input_dev, ABS_RX, 0, wacom_wac->features->x_phy, 0, 0);
  input_set_abs_params(input_dev, ABS_RY, 0, wacom_wac->features->y_phy, 0, 0);
 }
}
