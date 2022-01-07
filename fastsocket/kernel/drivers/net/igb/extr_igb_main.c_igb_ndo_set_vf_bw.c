
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_2__ mac; } ;
struct igb_adapter {int vfs_allocated_count; int vf_rate_link_speed; TYPE_1__* vf_data; int link_speed; struct e1000_hw hw; } ;
struct TYPE_3__ {scalar_t__ tx_rate; } ;


 int E1000_STATUS ;
 int E1000_STATUS_LU ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ e1000_82576 ;
 int igb_link_mbps (int ) ;
 int igb_set_vf_rate_limit (struct e1000_hw*,int,int,int) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int rd32 (int ) ;

__attribute__((used)) static int igb_ndo_set_vf_bw(struct net_device *netdev, int vf, int tx_rate)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 int actual_link_speed;

 if (hw->mac.type != e1000_82576)
  return -EOPNOTSUPP;

 actual_link_speed = igb_link_mbps(adapter->link_speed);
 if ((vf >= adapter->vfs_allocated_count) ||
     (!(rd32(E1000_STATUS) & E1000_STATUS_LU)) ||
     (tx_rate < 0) || (tx_rate > actual_link_speed))
  return -EINVAL;

 adapter->vf_rate_link_speed = actual_link_speed;
 adapter->vf_data[vf].tx_rate = (u16)tx_rate;
 igb_set_vf_rate_limit(hw, vf, tx_rate, actual_link_speed);

 return 0;
}
