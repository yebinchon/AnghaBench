
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int led_status; struct e1000_hw hw; } ;


 int IGB_LED_ON ;
 unsigned long UINT_MAX ;
 int clear_bit (int ,int *) ;
 int igb_blink_led (struct e1000_hw*) ;
 int igb_cleanup_led (struct e1000_hw*) ;
 int igb_led_off (struct e1000_hw*) ;
 int msleep_interruptible (unsigned long) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int igb_phys_id(struct net_device *netdev, u32 data)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 unsigned long timeout;

 timeout = data * 1000;





 if (!timeout || timeout > UINT_MAX)
  timeout = UINT_MAX;

 igb_blink_led(hw);
 msleep_interruptible(timeout);

 igb_led_off(hw);
 clear_bit(IGB_LED_ON, &adapter->led_status);
 igb_cleanup_led(hw);

 return 0;
}
