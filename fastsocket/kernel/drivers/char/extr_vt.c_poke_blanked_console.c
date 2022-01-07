
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* d; } ;
struct TYPE_3__ {scalar_t__ vc_mode; } ;


 int HZ ;
 scalar_t__ KD_GRAPHICS ;
 int WARN_CONSOLE_UNLOCKED () ;
 int blank_normal_wait ;
 int blank_state ;
 scalar_t__ blank_timer_expired ;
 int blankinterval ;
 scalar_t__ console_blanked ;
 int console_timer ;
 int del_timer (int *) ;
 size_t fg_console ;
 scalar_t__ ignore_poke ;
 scalar_t__ jiffies ;
 int might_sleep () ;
 int mod_timer (int *,scalar_t__) ;
 int unblank_screen () ;
 TYPE_2__* vc_cons ;

void poke_blanked_console(void)
{
 WARN_CONSOLE_UNLOCKED();







 might_sleep();




 del_timer(&console_timer);
 blank_timer_expired = 0;

 if (ignore_poke || !vc_cons[fg_console].d || vc_cons[fg_console].d->vc_mode == KD_GRAPHICS)
  return;
 if (console_blanked)
  unblank_screen();
 else if (blankinterval) {
  mod_timer(&console_timer, jiffies + (blankinterval * HZ));
  blank_state = blank_normal_wait;
 }
}
