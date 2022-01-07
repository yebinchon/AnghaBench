
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
struct e1000_adapter {int blink_timer; int led_status; struct e1000_hw hw; } ;


 scalar_t__ E1000_ID_INTERVAL ;
 int E1000_LED_ON ;
 int e1000_led_off (struct e1000_hw*) ;
 int e1000_led_on (struct e1000_hw*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ test_and_change_bit (int ,int *) ;

__attribute__((used)) static void e1000_led_blink_callback(unsigned long data)
{
 struct e1000_adapter *adapter = (struct e1000_adapter *) data;
 struct e1000_hw *hw = &adapter->hw;

 if (test_and_change_bit(E1000_LED_ON, &adapter->led_status))
  e1000_led_off(hw);
 else
  e1000_led_on(hw);

 mod_timer(&adapter->blink_timer, jiffies + E1000_ID_INTERVAL);
}
