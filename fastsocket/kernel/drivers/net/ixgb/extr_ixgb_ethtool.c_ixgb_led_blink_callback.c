
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgb_adapter {int blink_timer; int hw; int led_status; } ;


 scalar_t__ IXGB_ID_INTERVAL ;
 int IXGB_LED_ON ;
 int ixgb_led_off (int *) ;
 int ixgb_led_on (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ test_and_change_bit (int ,int *) ;

__attribute__((used)) static void
ixgb_led_blink_callback(unsigned long data)
{
 struct ixgb_adapter *adapter = (struct ixgb_adapter *)data;

 if (test_and_change_bit(IXGB_LED_ON, &adapter->led_status))
  ixgb_led_off(&adapter->hw);
 else
  ixgb_led_on(&adapter->hw);

 mod_timer(&adapter->blink_timer, jiffies + IXGB_ID_INTERVAL);
}
