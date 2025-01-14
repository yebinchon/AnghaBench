
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct TYPE_4__ {unsigned long data; scalar_t__ function; } ;
struct e1000_adapter {int led_status; TYPE_1__ blink_timer; struct e1000_hw hw; } ;


 int E1000_LED_ON ;
 int INT_MAX ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (TYPE_1__*) ;
 int e1000_cleanup_led (struct e1000_hw*) ;
 scalar_t__ e1000_led_blink_callback ;
 int e1000_led_off (struct e1000_hw*) ;
 int e1000_setup_led (struct e1000_hw*) ;
 int init_timer (TYPE_1__*) ;
 int jiffies ;
 int mod_timer (TYPE_1__*,int ) ;
 int msleep_interruptible (int) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int e1000_phys_id(struct net_device *netdev, u32 data)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;

 if (!data)
  data = INT_MAX;

 if (!adapter->blink_timer.function) {
  init_timer(&adapter->blink_timer);
  adapter->blink_timer.function = e1000_led_blink_callback;
  adapter->blink_timer.data = (unsigned long)adapter;
 }
 e1000_setup_led(hw);
 mod_timer(&adapter->blink_timer, jiffies);
 msleep_interruptible(data * 1000);
 del_timer_sync(&adapter->blink_timer);

 e1000_led_off(hw);
 clear_bit(E1000_LED_ON, &adapter->led_status);
 e1000_cleanup_led(hw);

 return 0;
}
