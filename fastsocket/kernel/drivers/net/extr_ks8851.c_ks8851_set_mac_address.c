
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int EBUSY ;
 int ETH_ALEN ;
 int is_valid_ether_addr (int ) ;
 int ks8851_write_mac_addr (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int ks8851_set_mac_address(struct net_device *dev, void *addr)
{
 struct sockaddr *sa = addr;

 if (netif_running(dev))
  return -EBUSY;

 if (!is_valid_ether_addr(sa->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(dev->dev_addr, sa->sa_data, ETH_ALEN);
 return ks8851_write_mac_addr(dev);
}
