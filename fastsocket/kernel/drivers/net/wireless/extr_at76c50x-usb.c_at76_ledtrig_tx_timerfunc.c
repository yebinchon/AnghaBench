
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int LED_FULL ;
 int LED_OFF ;
 scalar_t__ jiffies ;
 int led_trigger_event (int ,int ) ;
 int ledtrig_tx ;
 int ledtrig_tx_timer ;
 int mod_timer (int *,scalar_t__) ;
 int tx_activity ;

__attribute__((used)) static void at76_ledtrig_tx_timerfunc(unsigned long data)
{
 static int tx_lastactivity;

 if (tx_lastactivity != tx_activity) {
  tx_lastactivity = tx_activity;
  led_trigger_event(ledtrig_tx, LED_FULL);
  mod_timer(&ledtrig_tx_timer, jiffies + HZ / 4);
 } else
  led_trigger_event(ledtrig_tx, LED_OFF);
}
