
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kbd_struct {int ledmode; } ;


 int LED_SHOW_FLAGS ;
 int LED_SHOW_IOCTL ;
 unsigned int ledioctl ;
 int set_leds () ;

void setledstate(struct kbd_struct *kbd, unsigned int led)
{
 if (!(led & ~7)) {
  ledioctl = led;
  kbd->ledmode = LED_SHOW_IOCTL;
 } else
  kbd->ledmode = LED_SHOW_FLAGS;
 set_leds();
}
