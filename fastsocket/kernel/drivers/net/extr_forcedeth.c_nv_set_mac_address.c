
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;
struct fe_priv {int lock; } ;


 int EADDRNOTAVAIL ;
 int ETH_ALEN ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct fe_priv* netdev_priv (struct net_device*) ;
 int netif_addr_lock (struct net_device*) ;
 int netif_addr_unlock (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_tx_lock_bh (struct net_device*) ;
 int netif_tx_unlock_bh (struct net_device*) ;
 int nv_copy_mac_to_hw (struct net_device*) ;
 int nv_start_rx (struct net_device*) ;
 int nv_stop_rx (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int nv_set_mac_address(struct net_device *dev, void *addr)
{
 struct fe_priv *np = netdev_priv(dev);
 struct sockaddr *macaddr = (struct sockaddr*)addr;

 if (!is_valid_ether_addr(macaddr->sa_data))
  return -EADDRNOTAVAIL;


 memcpy(dev->dev_addr, macaddr->sa_data, ETH_ALEN);

 if (netif_running(dev)) {
  netif_tx_lock_bh(dev);
  netif_addr_lock(dev);
  spin_lock_irq(&np->lock);


  nv_stop_rx(dev);


  nv_copy_mac_to_hw(dev);


  nv_start_rx(dev);
  spin_unlock_irq(&np->lock);
  netif_addr_unlock(dev);
  netif_tx_unlock_bh(dev);
 } else {
  nv_copy_mac_to_hw(dev);
 }
 return 0;
}
