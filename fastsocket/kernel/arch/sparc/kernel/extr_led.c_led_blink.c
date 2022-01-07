
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long data; void* expires; } ;


 int FSHIFT ;
 int HZ ;
 int add_timer (TYPE_1__*) ;
 int* avenrun ;
 void* jiffies ;
 TYPE_1__ led_blink_timer ;
 int led_toggle () ;

__attribute__((used)) static void led_blink(unsigned long timeout)
{
 led_toggle();


 if (!timeout) {
  led_blink_timer.expires = jiffies +
   ((1 + (avenrun[0] >> FSHIFT)) * HZ);
  led_blink_timer.data = 0;
 } else {
  led_blink_timer.expires = jiffies + (timeout * HZ);
  led_blink_timer.data = timeout;
 }
 add_timer(&led_blink_timer);
}
