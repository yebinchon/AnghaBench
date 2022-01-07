
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long data; int function; } ;
struct led_timer {int list; TYPE_1__ blink_timer; struct led_classdev* cdev; } ;
struct led_classdev {int dummy; } ;


 int GFP_ATOMIC ;
 int init_timer (TYPE_1__*) ;
 struct led_timer* kzalloc (int,int ) ;
 int led_lock ;
 int led_timer_function ;
 int led_timers ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct led_timer *led_new_timer(struct led_classdev *led_cdev)
{
 struct led_timer *led;
 unsigned long flags;

 led = kzalloc(sizeof(struct led_timer), GFP_ATOMIC);
 if (!led)
  return ((void*)0);

 led->cdev = led_cdev;
 init_timer(&led->blink_timer);
 led->blink_timer.function = led_timer_function;
 led->blink_timer.data = (unsigned long) led;

 spin_lock_irqsave(&led_lock, flags);
 list_add(&led->list, &led_timers);
 spin_unlock_irqrestore(&led_lock, flags);

 return led;
}
