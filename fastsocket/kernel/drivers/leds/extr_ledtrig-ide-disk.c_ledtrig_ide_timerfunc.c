
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 int LED_OFF ;
 scalar_t__ ide_activity ;
 scalar_t__ ide_lastactivity ;
 scalar_t__ jiffies ;
 int led_trigger_event (int ,int ) ;
 int ledtrig_ide ;
 int ledtrig_ide_timer ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (int) ;

__attribute__((used)) static void ledtrig_ide_timerfunc(unsigned long data)
{
 if (ide_lastactivity != ide_activity) {
  ide_lastactivity = ide_activity;

  led_trigger_event(ledtrig_ide, INT_MAX);
  mod_timer(&ledtrig_ide_timer, jiffies + msecs_to_jiffies(10));
 } else {
  led_trigger_event(ledtrig_ide, LED_OFF);
 }
}
