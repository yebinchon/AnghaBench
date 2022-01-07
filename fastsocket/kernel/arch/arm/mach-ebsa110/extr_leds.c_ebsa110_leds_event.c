
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int led_event_t ;


 scalar_t__ SOFT_BASE ;

 int leds_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ebsa110_leds_event(led_event_t ledevt)
{
 unsigned long flags;

 spin_lock_irqsave(&leds_lock, flags);

 switch(ledevt) {
 case 128:
  *(volatile unsigned char *)SOFT_BASE ^= 128;
  break;

 default:
  break;
 }

 spin_unlock_irqrestore(&leds_lock, flags);
}
