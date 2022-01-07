
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int (* led_off ) (struct ixgbe_hw*,int ) ;int (* led_on ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_LEDCTL ;
 int IXGBE_LED_ON ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int msleep_interruptible (int) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;
 int stub1 (struct ixgbe_hw*,int ) ;
 int stub2 (struct ixgbe_hw*,int ) ;

__attribute__((used)) static int ixgbe_phys_id(struct net_device *netdev, u32 data)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;
 u32 led_reg = IXGBE_READ_REG(hw, IXGBE_LEDCTL);
 u32 i;

 if (!data || data > 300)
  data = 300;

 for (i = 0; i < (data * 1000); i += 400) {
  hw->mac.ops.led_on(hw, IXGBE_LED_ON);
  msleep_interruptible(200);
  hw->mac.ops.led_off(hw, IXGBE_LED_ON);
  msleep_interruptible(200);
 }


 IXGBE_WRITE_REG(&adapter->hw, IXGBE_LEDCTL, led_reg);

 return 0;
}
