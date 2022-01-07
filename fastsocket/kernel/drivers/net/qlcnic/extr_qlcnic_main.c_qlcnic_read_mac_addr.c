
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qlcnic_adapter {int * mac_addr; struct pci_dev* pdev; struct net_device* netdev; } ;
struct pci_dev {int dev; } ;
struct net_device {int addr_len; int * dev_addr; int * perm_addr; } ;


 int EIO ;
 int ETH_ALEN ;
 int dev_warn (int *,char*,int *) ;
 int is_valid_ether_addr (int *) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ qlcnic_get_mac_address (struct qlcnic_adapter*,int *) ;

int qlcnic_read_mac_addr(struct qlcnic_adapter *adapter)
{
 u8 mac_addr[ETH_ALEN];
 struct net_device *netdev = adapter->netdev;
 struct pci_dev *pdev = adapter->pdev;

 if (qlcnic_get_mac_address(adapter, mac_addr) != 0)
  return -EIO;

 memcpy(netdev->dev_addr, mac_addr, ETH_ALEN);
 memcpy(netdev->perm_addr, netdev->dev_addr, netdev->addr_len);
 memcpy(adapter->mac_addr, netdev->dev_addr, netdev->addr_len);



 if (!is_valid_ether_addr(netdev->perm_addr))
  dev_warn(&pdev->dev, "Bad MAC address %pM.\n",
     netdev->dev_addr);

 return 0;
}
