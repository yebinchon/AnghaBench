
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vlan_group {int dummy; } ;
struct pci_dev {int dev; } ;
struct net_device {int dummy; } ;
struct atl1e_adapter {int hw; struct vlan_group* vlgrp; struct pci_dev* pdev; } ;


 int AT_READ_REG (int *,int ) ;
 int AT_WRITE_REG (int *,int ,int ) ;
 int MAC_CTRL_RMV_VLAN ;
 int REG_MAC_CTRL ;
 int atl1e_irq_disable (struct atl1e_adapter*) ;
 int atl1e_irq_enable (struct atl1e_adapter*) ;
 int dev_dbg (int *,char*) ;
 struct atl1e_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void atl1e_vlan_rx_register(struct net_device *netdev,
       struct vlan_group *grp)
{
 struct atl1e_adapter *adapter = netdev_priv(netdev);
 struct pci_dev *pdev = adapter->pdev;
 u32 mac_ctrl_data = 0;

 dev_dbg(&pdev->dev, "atl1e_vlan_rx_register\n");

 atl1e_irq_disable(adapter);

 adapter->vlgrp = grp;
 mac_ctrl_data = AT_READ_REG(&adapter->hw, REG_MAC_CTRL);

 if (grp) {

  mac_ctrl_data |= MAC_CTRL_RMV_VLAN;
 } else {

  mac_ctrl_data &= ~MAC_CTRL_RMV_VLAN;
 }

 AT_WRITE_REG(&adapter->hw, REG_MAC_CTRL, mac_ctrl_data);
 atl1e_irq_enable(adapter);
}
