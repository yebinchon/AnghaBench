
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtouch_usb {int input; int press; int y; int x; int touch; struct usbtouch_device_info* type; } ;
struct usbtouch_device_info {scalar_t__ max_press; int (* read_data ) (struct usbtouch_usb*,unsigned char*) ;} ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int input_report_abs (int ,int ,int ) ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;
 int stub1 (struct usbtouch_usb*,unsigned char*) ;
 scalar_t__ swap_xy ;

__attribute__((used)) static void usbtouch_process_pkt(struct usbtouch_usb *usbtouch,
                                 unsigned char *pkt, int len)
{
 struct usbtouch_device_info *type = usbtouch->type;

 if (!type->read_data(usbtouch, pkt))
   return;

 input_report_key(usbtouch->input, BTN_TOUCH, usbtouch->touch);

 if (swap_xy) {
  input_report_abs(usbtouch->input, ABS_X, usbtouch->y);
  input_report_abs(usbtouch->input, ABS_Y, usbtouch->x);
 } else {
  input_report_abs(usbtouch->input, ABS_X, usbtouch->x);
  input_report_abs(usbtouch->input, ABS_Y, usbtouch->y);
 }
 if (type->max_press)
  input_report_abs(usbtouch->input, ABS_PRESSURE, usbtouch->press);
 input_sync(usbtouch->input);
}
