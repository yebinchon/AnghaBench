
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct e1000_hw {struct e1000_adapter* back; } ;
struct e1000_adapter {struct net_device* netdev; } ;



struct net_device *e1000_get_hw_dev(struct e1000_hw *hw)
{
 struct e1000_adapter *adapter = hw->back;
 return adapter->netdev;
}
