
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_keyspan {int * keymap; struct input_dev* input; } ;
struct input_dev {int dummy; } ;


 int EV_MSC ;
 int MSC_SCAN ;
 int input_event (struct input_dev*,int ,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void keyspan_report_button(struct usb_keyspan *remote, int button, int press)
{
 struct input_dev *input = remote->input;

 input_event(input, EV_MSC, MSC_SCAN, button);
 input_report_key(input, remote->keymap[button], press);
 input_sync(input);
}
