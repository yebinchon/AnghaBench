
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_polled_dev {int input; } ;


 int RB532_BTN_KSYM ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;
 int rb532_button_pressed () ;

__attribute__((used)) static void rb532_button_poll(struct input_polled_dev *poll_dev)
{
 input_report_key(poll_dev->input, RB532_BTN_KSYM,
    rb532_button_pressed());
 input_sync(poll_dev->input);
}
