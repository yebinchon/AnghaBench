
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {char* name; struct input_dev* dev; } ;
struct ps2pp_info {int features; int kind; } ;
struct input_dev {int relbit; int keybit; } ;


 int BTN_BACK ;
 int BTN_EXTRA ;
 int BTN_FORWARD ;
 int BTN_SIDE ;
 int BTN_TASK ;
 int PS2PP_EXTRA_BTN ;
 int PS2PP_HWHEEL ;




 int PS2PP_NAV_BTN ;
 int PS2PP_SIDE_BTN ;
 int PS2PP_TASK_BTN ;
 int PS2PP_WHEEL ;
 int REL_HWHEEL ;
 int REL_WHEEL ;
 int __set_bit (int ,int ) ;

__attribute__((used)) static void ps2pp_set_model_properties(struct psmouse *psmouse,
           const struct ps2pp_info *model_info,
           bool using_ps2pp)
{
 struct input_dev *input_dev = psmouse->dev;

 if (model_info->features & PS2PP_SIDE_BTN)
  __set_bit(BTN_SIDE, input_dev->keybit);

 if (model_info->features & PS2PP_EXTRA_BTN)
  __set_bit(BTN_EXTRA, input_dev->keybit);

 if (model_info->features & PS2PP_TASK_BTN)
  __set_bit(BTN_TASK, input_dev->keybit);

 if (model_info->features & PS2PP_NAV_BTN) {
  __set_bit(BTN_FORWARD, input_dev->keybit);
  __set_bit(BTN_BACK, input_dev->keybit);
 }

 if (model_info->features & PS2PP_WHEEL)
  __set_bit(REL_WHEEL, input_dev->relbit);

 if (model_info->features & PS2PP_HWHEEL)
  __set_bit(REL_HWHEEL, input_dev->relbit);

 switch (model_info->kind) {
  case 128:
   psmouse->name = "Wheel Mouse";
   break;

  case 131:
   psmouse->name = "MX Mouse";
   break;

  case 130:
   psmouse->name = "TouchPad 3";
   break;

  case 129:
   psmouse->name = "TrackMan";
   break;

  default:





   if (using_ps2pp)
    psmouse->name = "Mouse";
   break;
 }
}
