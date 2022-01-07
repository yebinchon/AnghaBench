
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct net_device {int features; int watchdog_timeo; int * netdev_ops; } ;


 int AT_TX_WATCHDOG ;
 int NETIF_F_HW_CSUM ;
 int NETIF_F_HW_VLAN_RX ;
 int NETIF_F_HW_VLAN_TX ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int atl1c_netdev_ops ;
 int atl1c_set_ethtool_ops (struct net_device*) ;
 int pci_set_drvdata (struct pci_dev*,struct net_device*) ;

__attribute__((used)) static int atl1c_init_netdev(struct net_device *netdev, struct pci_dev *pdev)
{
 SET_NETDEV_DEV(netdev, &pdev->dev);
 pci_set_drvdata(pdev, netdev);

 netdev->netdev_ops = &atl1c_netdev_ops;
 netdev->watchdog_timeo = AT_TX_WATCHDOG;
 atl1c_set_ethtool_ops(netdev);


 netdev->features = NETIF_F_SG |
    NETIF_F_HW_CSUM |
    NETIF_F_HW_VLAN_TX |
    NETIF_F_HW_VLAN_RX |
    NETIF_F_TSO |
    NETIF_F_TSO6;
 return 0;
}
