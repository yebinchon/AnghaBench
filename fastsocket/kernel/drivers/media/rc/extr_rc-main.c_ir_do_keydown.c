
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct rc_dev {int keypressed; int last_scancode; scalar_t__ last_toggle; int input_dev; int last_keycode; int input_name; } ;


 int EV_MSC ;
 int IR_dprintk (int,char*,int ,int ,int) ;
 int KEY_RESERVED ;
 int MSC_SCAN ;
 int input_event (int ,int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int ir_do_keyup (struct rc_dev*) ;

__attribute__((used)) static void ir_do_keydown(struct rc_dev *dev, int scancode,
     u32 keycode, u8 toggle)
{
 input_event(dev->input_dev, EV_MSC, MSC_SCAN, scancode);


 if (dev->keypressed &&
     dev->last_scancode == scancode &&
     dev->last_toggle == toggle)
  return;


 ir_do_keyup(dev);

 dev->last_scancode = scancode;
 dev->last_toggle = toggle;
 dev->last_keycode = keycode;

 if (keycode == KEY_RESERVED)
  return;


 dev->keypressed = 1;
 IR_dprintk(1, "%s: key down event, key 0x%04x, scancode 0x%04x\n",
     dev->input_name, keycode, scancode);
 input_report_key(dev->input_dev, dev->last_keycode, 1);
 input_sync(dev->input_dev);
}
