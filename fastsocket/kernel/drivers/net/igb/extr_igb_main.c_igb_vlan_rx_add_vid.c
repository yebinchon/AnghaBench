
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int vfs_allocated_count; struct e1000_hw hw; } ;


 int igb_vfta_set (struct e1000_hw*,int ,int) ;
 int igb_vlvf_set (struct igb_adapter*,int ,int,int) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void igb_vlan_rx_add_vid(struct net_device *netdev, u16 vid)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 int pf_id = adapter->vfs_allocated_count;


 igb_vlvf_set(adapter, vid, 1, pf_id);


 igb_vfta_set(hw, vid, 1);
}
