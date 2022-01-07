
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct atl1c_adapter {int vlgrp; int netdev; struct pci_dev* pdev; } ;


 int atl1c_vlan_rx_register (int ,int ) ;
 int dev_dbg (int *,char*) ;
 scalar_t__ netif_msg_pktdata (struct atl1c_adapter*) ;

__attribute__((used)) static void atl1c_restore_vlan(struct atl1c_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;

 if (netif_msg_pktdata(adapter))
  dev_dbg(&pdev->dev, "atl1c_restore_vlan !");
 atl1c_vlan_rx_register(adapter->netdev, adapter->vlgrp);
}
