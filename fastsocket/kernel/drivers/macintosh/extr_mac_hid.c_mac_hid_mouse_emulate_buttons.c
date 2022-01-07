
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int emumousebtn ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 unsigned int mouse_button2_keycode ;
 unsigned int mouse_button3_keycode ;
 int mouse_emulate_buttons ;
 unsigned int mouse_last_keycode ;

int mac_hid_mouse_emulate_buttons(int caller, unsigned int keycode, int down)
{
 switch (caller) {
 case 1:

  if (mouse_emulate_buttons
      && (keycode == mouse_button2_keycode
   || keycode == mouse_button3_keycode)) {
   if (mouse_emulate_buttons == 1) {
    input_report_key(emumousebtn,
       keycode == mouse_button2_keycode ? BTN_MIDDLE : BTN_RIGHT,
       down);
    input_sync(emumousebtn);
    return 1;
   }
   mouse_last_keycode = down ? keycode : 0;
  }
  break;
 }
 return 0;
}
