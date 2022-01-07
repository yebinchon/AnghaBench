
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int index; } ;


 int VC_SCROLLOCK ;
 int clr_vc_kbd_led (scalar_t__,int ) ;
 scalar_t__ kbd_table ;
 int set_leds () ;
 int vc_cons_allocated (int) ;

__attribute__((used)) static void con_start(struct tty_struct *tty)
{
 int console_num;
 if (!tty)
  return;
 console_num = tty->index;
 if (!vc_cons_allocated(console_num))
  return;
 clr_vc_kbd_led(kbd_table + console_num, VC_SCROLLOCK);
 set_leds();
}
