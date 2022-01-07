
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntrig_data {int pen_active; int finger_active; int inverted; int x; int reading_a_point; int y; int id; int found_contact_id; int w; int h; } ;
struct input_dev {int dummy; } ;
struct hid_usage {int hid; } ;
struct hid_field {int application; TYPE_1__* hidinput; } ;
struct hid_device {int claimed; int (* hiddev_hid_event ) (struct hid_device*,struct hid_field*,struct hid_usage*,int) ;} ;
typedef int __s32 ;
struct TYPE_2__ {struct input_dev* input; } ;


 int ABS_MT_ORIENTATION ;
 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int ABS_MT_TOUCH_MAJOR ;
 int ABS_MT_TOUCH_MINOR ;
 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOOL_DOUBLETAP ;
 int BTN_TOOL_PEN ;
 int BTN_TOOL_RUBBER ;
 int EV_ABS ;
 int HID_CLAIMED_HIDDEV ;
 int HID_CLAIMED_INPUT ;
 struct ntrig_data* hid_get_drvdata (struct hid_device*) ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_mt_sync (struct input_dev*) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int stub1 (struct hid_device*,struct hid_field*,struct hid_usage*,int) ;

__attribute__((used)) static int ntrig_event (struct hid_device *hid, struct hid_field *field,
                          struct hid_usage *usage, __s32 value)
{
 struct input_dev *input = field->hidinput->input;
 struct ntrig_data *nd = hid_get_drvdata(hid);

        if (hid->claimed & HID_CLAIMED_INPUT) {
  switch (usage->hid) {

  case 133:
   if (field->application & 0x3)
    nd->pen_active = (value != 0);
   else
    nd->finger_active = (value != 0);
   return 0;

  case 132:
   nd->inverted = value;
   return 0;

  case 129:
   nd->x = value;
   nd->reading_a_point = 1;
   break;
  case 128:
   nd->y = value;
   break;
  case 135:
   nd->id = value;

   nd->found_contact_id = 1;
   break;
  case 130:
   nd->w = value;
   break;
  case 134:
   nd->h = value;





   if (!nd->found_contact_id) {
    if (nd->pen_active && nd->finger_active) {
     input_report_key(input, BTN_TOOL_DOUBLETAP, 0);
     input_report_key(input, BTN_TOOL_DOUBLETAP, 1);
    }
    input_event(input, EV_ABS, ABS_X, nd->x);
    input_event(input, EV_ABS, ABS_Y, nd->y);
   }
   break;
  case 131:





   if (! nd->found_contact_id) {
    if (nd->pen_active && nd->finger_active) {
     input_report_key(input,
       nd->inverted ? BTN_TOOL_RUBBER : BTN_TOOL_PEN
       , 0);
     input_report_key(input,
       nd->inverted ? BTN_TOOL_RUBBER : BTN_TOOL_PEN
       , 1);
    }
    input_event(input, EV_ABS, ABS_X, nd->x);
    input_event(input, EV_ABS, ABS_Y, nd->y);
    input_event(input, EV_ABS, ABS_PRESSURE, value);
   }
   break;
  case 0xff000002:






   if (!nd->reading_a_point || value != 1)
    break;

   if (nd->id == 0) {
    input_event(input, EV_ABS, ABS_X, nd->x);
    input_event(input, EV_ABS, ABS_Y, nd->y);
   }
   input_event(input, EV_ABS, ABS_MT_POSITION_X, nd->x);
   input_event(input, EV_ABS, ABS_MT_POSITION_Y, nd->y);
   if (nd->w > nd->h) {
    input_event(input, EV_ABS,
      ABS_MT_ORIENTATION, 1);
    input_event(input, EV_ABS,
      ABS_MT_TOUCH_MAJOR, nd->w);
    input_event(input, EV_ABS,
      ABS_MT_TOUCH_MINOR, nd->h);
   } else {
    input_event(input, EV_ABS,
      ABS_MT_ORIENTATION, 0);
    input_event(input, EV_ABS,
      ABS_MT_TOUCH_MAJOR, nd->h);
    input_event(input, EV_ABS,
      ABS_MT_TOUCH_MINOR, nd->w);
   }
   input_mt_sync(field->hidinput->input);
   nd->reading_a_point = 0;
   nd->found_contact_id = 0;
   break;

  default:

   return 0;
  }
 }


        if (hid->claimed & HID_CLAIMED_HIDDEV && hid->hiddev_hid_event)
                hid->hiddev_hid_event(hid, field, usage, value);

 return 1;
}
