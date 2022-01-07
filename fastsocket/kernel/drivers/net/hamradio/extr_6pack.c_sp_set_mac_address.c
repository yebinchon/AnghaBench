
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_ax25 {int sax25_call; } ;
struct net_device {int dev_addr; } ;


 int AX25_ADDR_LEN ;
 int memcpy (int ,int *,int ) ;
 int netif_addr_lock (struct net_device*) ;
 int netif_addr_unlock (struct net_device*) ;
 int netif_tx_lock_bh (struct net_device*) ;
 int netif_tx_unlock_bh (struct net_device*) ;

__attribute__((used)) static int sp_set_mac_address(struct net_device *dev, void *addr)
{
 struct sockaddr_ax25 *sa = addr;

 netif_tx_lock_bh(dev);
 netif_addr_lock(dev);
 memcpy(dev->dev_addr, &sa->sax25_call, AX25_ADDR_LEN);
 netif_addr_unlock(dev);
 netif_tx_unlock_bh(dev);

 return 0;
}
