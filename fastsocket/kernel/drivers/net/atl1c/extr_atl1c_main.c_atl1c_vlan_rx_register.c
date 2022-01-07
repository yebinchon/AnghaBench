
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vlan_group {int dummy; } ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct atl1c_adapter {int hw; struct vlan_group* vlgrp; struct pci_dev* pdev; } ;


 int AT_READ_REG (int *,int ,int *) ;
 int AT_WRITE_REG (int *,int ,int ) ;
 int MAC_CTRL_RMV_VLAN ;
 int REG_MAC_CTRL ;
 int atl1c_irq_disable (struct atl1c_adapter*) ;
 int atl1c_irq_enable (struct atl1c_adapter*) ;
 int dev_dbg (int *,char*) ;
 struct atl1c_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_pktdata (struct atl1c_adapter*) ;

__attribute__((used)) static void atl1c_vlan_rx_register(struct net_device *netdev,
       struct vlan_group *grp)
{
 struct atl1c_adapter *adapter = netdev_priv(netdev);
 struct pci_dev *pdev = adapter->pdev;
 u32 mac_ctrl_data = 0;

 if (netif_msg_pktdata(adapter))
  dev_dbg(&pdev->dev, "atl1c_vlan_rx_register\n");

 atl1c_irq_disable(adapter);

 adapter->vlgrp = grp;
 AT_READ_REG(&adapter->hw, REG_MAC_CTRL, &mac_ctrl_data);

 if (grp) {

  mac_ctrl_data |= MAC_CTRL_RMV_VLAN;
 } else {

  mac_ctrl_data &= ~MAC_CTRL_RMV_VLAN;
 }

 AT_WRITE_REG(&adapter->hw, REG_MAC_CTRL, mac_ctrl_data);
 atl1c_irq_enable(adapter);
}
