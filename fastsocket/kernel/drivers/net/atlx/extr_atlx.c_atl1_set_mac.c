
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct TYPE_2__ {int mac_addr; } ;
struct atlx_adapter {TYPE_1__ hw; } ;


 int EADDRNOTAVAIL ;
 int EBUSY ;
 int atlx_set_mac_addr (TYPE_1__*) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct atlx_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int atlx_set_mac(struct net_device *netdev, void *p)
{
 struct atlx_adapter *adapter = netdev_priv(netdev);
 struct sockaddr *addr = p;

 if (netif_running(netdev))
  return -EBUSY;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);
 memcpy(adapter->hw.mac_addr, addr->sa_data, netdev->addr_len);

 atlx_set_mac_addr(&adapter->hw);
 return 0;
}
