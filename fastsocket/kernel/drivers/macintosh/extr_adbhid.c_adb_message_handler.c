
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct TYPE_4__ {TYPE_1__* input; } ;
struct TYPE_3__ {int timer; } ;





 int NOTIFY_DONE ;
 int adb_poll () ;
 TYPE_2__** adbhid ;
 int adbhid_kbd_capslock_remember () ;
 int adbhid_probe () ;
 int del_timer_sync (int *) ;
 int leds_req_pending ;
 int restore_capslock_events ;

__attribute__((used)) static int
adb_message_handler(struct notifier_block *this, unsigned long code, void *x)
{
 switch (code) {
 case 128:
 case 129:

  {
   int i;
   for (i = 1; i < 16; i++) {
    if (adbhid[i])
     del_timer_sync(&adbhid[i]->input->timer);
   }
  }


  while (leds_req_pending)
   adb_poll();






  if (restore_capslock_events)
   adbhid_kbd_capslock_remember();

  break;

 case 130:
  adbhid_probe();
  break;
 }
 return NOTIFY_DONE;
}
