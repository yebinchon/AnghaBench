
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct elantech_data* private; struct input_dev* dev; } ;
struct input_dev {int keybit; int evbit; } ;
struct elantech_data {int hw_version; int fw_version_maj; int capabilities; } ;


 int ABS_HAT0X ;
 int ABS_HAT0Y ;
 int ABS_HAT1X ;
 int ABS_HAT1Y ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_BACK ;
 int BTN_FORWARD ;
 int BTN_LEFT ;
 int BTN_RIGHT ;
 int BTN_TOOL_DOUBLETAP ;
 int BTN_TOOL_FINGER ;
 int BTN_TOOL_TRIPLETAP ;
 int BTN_TOUCH ;
 int ETP_2FT_XMAX ;
 int ETP_2FT_XMIN ;
 int ETP_2FT_YMAX ;
 int ETP_2FT_YMIN ;
 int ETP_CAP_HAS_ROCKER ;
 int ETP_XMAX_V1 ;
 int ETP_XMAX_V2 ;
 int ETP_XMIN_V1 ;
 int ETP_XMIN_V2 ;
 int ETP_YMAX_V1 ;
 int ETP_YMAX_V2 ;
 int ETP_YMIN_V1 ;
 int ETP_YMIN_V2 ;
 int EV_ABS ;
 int EV_KEY ;
 int __set_bit (int ,int ) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void elantech_set_input_params(struct psmouse *psmouse)
{
 struct input_dev *dev = psmouse->dev;
 struct elantech_data *etd = psmouse->private;

 __set_bit(EV_KEY, dev->evbit);
 __set_bit(EV_ABS, dev->evbit);

 __set_bit(BTN_LEFT, dev->keybit);
 __set_bit(BTN_RIGHT, dev->keybit);

 __set_bit(BTN_TOUCH, dev->keybit);
 __set_bit(BTN_TOOL_FINGER, dev->keybit);
 __set_bit(BTN_TOOL_DOUBLETAP, dev->keybit);
 __set_bit(BTN_TOOL_TRIPLETAP, dev->keybit);

 switch (etd->hw_version) {
 case 1:

  if ((etd->fw_version_maj == 0x01) &&
      (etd->capabilities & ETP_CAP_HAS_ROCKER)) {
   __set_bit(BTN_FORWARD, dev->keybit);
   __set_bit(BTN_BACK, dev->keybit);
  }
  input_set_abs_params(dev, ABS_X, ETP_XMIN_V1, ETP_XMAX_V1, 0, 0);
  input_set_abs_params(dev, ABS_Y, ETP_YMIN_V1, ETP_YMAX_V1, 0, 0);
  break;

 case 2:
  input_set_abs_params(dev, ABS_X, ETP_XMIN_V2, ETP_XMAX_V2, 0, 0);
  input_set_abs_params(dev, ABS_Y, ETP_YMIN_V2, ETP_YMAX_V2, 0, 0);
  input_set_abs_params(dev, ABS_HAT0X, ETP_2FT_XMIN, ETP_2FT_XMAX, 0, 0);
  input_set_abs_params(dev, ABS_HAT0Y, ETP_2FT_YMIN, ETP_2FT_YMAX, 0, 0);
  input_set_abs_params(dev, ABS_HAT1X, ETP_2FT_XMIN, ETP_2FT_XMAX, 0, 0);
  input_set_abs_params(dev, ABS_HAT1Y, ETP_2FT_YMIN, ETP_2FT_YMAX, 0, 0);
  break;
 }
}
