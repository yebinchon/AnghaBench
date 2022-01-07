
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct st5481_adapter {int led_counter; int leds; } ;


 int GPIO_OUT ;
 int GREEN_LED ;
 int st5481_usb_device_ctrl_msg (struct st5481_adapter*,int ,int ,int *,int *) ;

__attribute__((used)) static void led_blink(struct st5481_adapter *adapter)
{
 u_char leds = adapter->leds;


 if (++adapter->led_counter % 50) {
  return;
 }

 if (adapter->led_counter % 100) {
  leds |= GREEN_LED;
 } else {
  leds &= ~GREEN_LED;
 }

 st5481_usb_device_ctrl_msg(adapter, GPIO_OUT, leds, ((void*)0), ((void*)0));
}
