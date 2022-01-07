
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wacom_wac {unsigned char* data; int* id; int * tool; TYPE_2__* features; } ;
struct wacom_combo {TYPE_1__* wacom; } ;
struct input_dev {int dummy; } ;
typedef int __le16 ;
struct TYPE_4__ {unsigned char distance_max; } ;
struct TYPE_3__ {struct input_dev* dev; } ;


 int ABS_DISTANCE ;
 int ABS_MISC ;
 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_STYLUS ;
 int BTN_STYLUS2 ;
 int BTN_TOOL_PEN ;
 int BTN_TOOL_RUBBER ;
 int BTN_TOUCH ;
 int ERASER_DEVICE_ID ;
 int STYLUS_DEVICE_ID ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int le16_to_cpup (int *) ;

__attribute__((used)) static int wacom_bpt_pen(struct wacom_wac *wacom, struct wacom_combo *wcombo)
{
 struct input_dev *input = wcombo->wacom->dev;
 unsigned char *data = wacom->data;
 int prox = 0, x = 0, y = 0, p = 0, d = 0, pen = 0, btn1 = 0, btn2 = 0;

 if (data[0] != 0x02)
     return 0;

 prox = (data[1] & 0x20) == 0x20;
 if (prox) {
  if (!wacom->tool[0]) {
   if (data[1] & 0x08) {
    wacom->tool[0] = BTN_TOOL_RUBBER;
    wacom->id[0] = ERASER_DEVICE_ID;
   } else {
    wacom->tool[0] = BTN_TOOL_PEN;
    wacom->id[0] = STYLUS_DEVICE_ID;
   }
  }
  x = le16_to_cpup((__le16 *)&data[2]);
  y = le16_to_cpup((__le16 *)&data[4]);
  p = le16_to_cpup((__le16 *)&data[6]);






  if (data[8] <= wacom->features->distance_max)
   d = wacom->features->distance_max - data[8];

  pen = data[1] & 0x01;
  btn1 = data[1] & 0x02;
  btn2 = data[1] & 0x04;
 }

 input_report_key(input, BTN_TOUCH, pen);
 input_report_key(input, BTN_STYLUS, btn1);
 input_report_key(input, BTN_STYLUS2, btn2);

 input_report_abs(input, ABS_X, x);
 input_report_abs(input, ABS_Y, y);
 input_report_abs(input, ABS_PRESSURE, p);
 input_report_abs(input, ABS_DISTANCE, d);

 if (!prox)
  wacom->id[0] = 0;

 input_report_key(input, wacom->tool[0], prox);
 input_report_abs(input, ABS_MISC, wacom->id[0]);

 if (!prox)
  wacom->tool[0] = 0;

 return 1;

}
