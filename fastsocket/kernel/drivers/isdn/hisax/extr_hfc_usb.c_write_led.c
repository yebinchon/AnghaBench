
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ old_led_state; } ;
typedef TYPE_1__ hfcusb_data ;
typedef scalar_t__ __u8 ;


 int HFCUSB_P_DATA ;
 int queue_control_request (TYPE_1__*,int ,scalar_t__,int) ;

__attribute__((used)) static void
write_led(hfcusb_data * hfc, __u8 led_state)
{
 if (led_state != hfc->old_led_state) {
  hfc->old_led_state = led_state;
  queue_control_request(hfc, HFCUSB_P_DATA, led_state, 1);
 }
}
