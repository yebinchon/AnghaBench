
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct atl1e_adapter {int vlgrp; int netdev; struct pci_dev* pdev; } ;


 int atl1e_vlan_rx_register (int ,int ) ;
 int dev_dbg (int *,char*) ;

__attribute__((used)) static void atl1e_restore_vlan(struct atl1e_adapter *adapter)
{
 struct pci_dev *pdev = adapter->pdev;

 dev_dbg(&pdev->dev, "atl1e_restore_vlan !");
 atl1e_vlan_rx_register(adapter->netdev, adapter->vlgrp);
}
