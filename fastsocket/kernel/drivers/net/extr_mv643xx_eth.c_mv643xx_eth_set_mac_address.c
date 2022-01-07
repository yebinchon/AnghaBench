
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;


 int ETH_ALEN ;
 int memcpy (int ,int ,int ) ;
 int mv643xx_eth_program_unicast_filter (struct net_device*) ;
 int netif_addr_lock_bh (struct net_device*) ;
 int netif_addr_unlock_bh (struct net_device*) ;

__attribute__((used)) static int mv643xx_eth_set_mac_address(struct net_device *dev, void *addr)
{
 struct sockaddr *sa = addr;

 memcpy(dev->dev_addr, sa->sa_data, ETH_ALEN);

 netif_addr_lock_bh(dev);
 mv643xx_eth_program_unicast_filter(dev);
 netif_addr_unlock_bh(dev);

 return 0;
}
