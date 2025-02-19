
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_data {int butstate; } ;
struct input_dev {int dummy; } ;
typedef int __u16 ;


 int ABS_MISC ;
 int BTN_0 ;
 int BTN_1 ;
 int BTN_2 ;
 int BTN_3 ;
 int BTN_4 ;
 int BTN_5 ;
 int BTN_6 ;
 int BTN_7 ;
 int BTN_8 ;
 int BTN_TOOL_FINGER ;
 int EV_MSC ;
 int MSC_SERIAL ;
 int PAD_DEVICE_ID ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void wacom_i4_parse_button_report(struct wacom_data *wdata,
   struct input_dev *input, unsigned char *data)
{
 __u16 new_butstate;

 new_butstate = (data[3] << 1) | (data[2] & 0x01);
 if (new_butstate != wdata->butstate) {
  wdata->butstate = new_butstate;
  input_report_key(input, BTN_0, new_butstate & 0x001);
  input_report_key(input, BTN_1, new_butstate & 0x002);
  input_report_key(input, BTN_2, new_butstate & 0x004);
  input_report_key(input, BTN_3, new_butstate & 0x008);
  input_report_key(input, BTN_4, new_butstate & 0x010);
  input_report_key(input, BTN_5, new_butstate & 0x020);
  input_report_key(input, BTN_6, new_butstate & 0x040);
  input_report_key(input, BTN_7, new_butstate & 0x080);
  input_report_key(input, BTN_8, new_butstate & 0x100);
  input_report_key(input, BTN_TOOL_FINGER, 1);
  input_report_abs(input, ABS_MISC, PAD_DEVICE_ID);
  input_event(input, EV_MSC, MSC_SERIAL, 0xffffffff);
  input_sync(input);
 }
}
