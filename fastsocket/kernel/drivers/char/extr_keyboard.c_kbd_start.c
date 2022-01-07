
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_handle {int dummy; } ;


 int EV_LED ;
 int EV_SYN ;
 int LED_CAPSL ;
 int LED_NUML ;
 int LED_SCROLLL ;
 int SYN_REPORT ;
 int input_inject_event (struct input_handle*,int ,int ,int) ;
 int keyboard_tasklet ;
 unsigned char ledstate ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;

__attribute__((used)) static void kbd_start(struct input_handle *handle)
{
 unsigned char leds = ledstate;

 tasklet_disable(&keyboard_tasklet);
 if (leds != 0xff) {
  input_inject_event(handle, EV_LED, LED_SCROLLL, !!(leds & 0x01));
  input_inject_event(handle, EV_LED, LED_NUML, !!(leds & 0x02));
  input_inject_event(handle, EV_LED, LED_CAPSL, !!(leds & 0x04));
  input_inject_event(handle, EV_SYN, SYN_REPORT, 0);
 }
 tasklet_enable(&keyboard_tasklet);
}
