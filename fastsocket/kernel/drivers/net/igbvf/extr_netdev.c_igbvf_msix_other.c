
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int get_link_status; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igbvf_adapter {int eims_other; int watchdog_timer; int state; int int_counter1; struct e1000_hw hw; } ;
typedef int irqreturn_t ;


 int EIMS ;
 int IRQ_HANDLED ;
 int __IGBVF_DOWN ;
 int ew32 (int ,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static irqreturn_t igbvf_msix_other(int irq, void *data)
{
 struct net_device *netdev = data;
 struct igbvf_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;

 adapter->int_counter1++;

 netif_carrier_off(netdev);
 hw->mac.get_link_status = 1;
 if (!test_bit(__IGBVF_DOWN, &adapter->state))
  mod_timer(&adapter->watchdog_timer, jiffies + 1);

 ew32(EIMS, adapter->eims_other);

 return IRQ_HANDLED;
}
