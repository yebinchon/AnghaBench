
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; } ;
struct hid_input {int input; } ;
struct hid_field {int logical_maximum; int logical_minimum; } ;
struct hid_device {int dummy; } ;


 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOOL_DOUBLETAP ;
 int EV_ABS ;
 int HID_USAGE_PAGE ;
 int hid_map_usage (struct hid_input*,struct hid_usage*,unsigned long**,int*,int ,int ) ;
 int input_set_abs_params (int ,int ,int ,int,int ,int ) ;
 int nt_map_key_clear (int ) ;

__attribute__((used)) static int ntrig_input_mapping(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 switch (usage->hid & HID_USAGE_PAGE) {

 case 128:
  switch (usage->hid) {
  case 131:
   hid_map_usage(hi, usage, bit, max,
     EV_ABS, ABS_MT_POSITION_X);
   input_set_abs_params(hi->input, ABS_X,
     field->logical_minimum,
     field->logical_maximum, 0, 0);
   return 1;
  case 130:
   hid_map_usage(hi, usage, bit, max,
     EV_ABS, ABS_MT_POSITION_Y);
   input_set_abs_params(hi->input, ABS_Y,
     field->logical_minimum,
     field->logical_maximum, 0, 0);
   return 1;
  }
  return 0;

 case 129:
  switch (usage->hid) {

  case 137:
  case 133:
  case 135:
  case 138:
  case 136:
   return -1;


  case 139:
   nt_map_key_clear(BTN_TOOL_DOUBLETAP);
   return 1;


  case 132:
   hid_map_usage(hi, usage, bit, max,
     EV_ABS, ABS_MT_TOUCH_MAJOR);
   return 1;
  case 134:
   hid_map_usage(hi, usage, bit, max,
     EV_ABS, ABS_MT_TOUCH_MINOR);
   input_set_abs_params(hi->input, ABS_MT_ORIENTATION,
     0, 1, 0, 0);
   return 1;
  }
  return 0;

 case 0xff000000:

  return -1;
 }

 return 0;
}
