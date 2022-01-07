
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; int addr_len; } ;


 int EBUSY ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ netif_running (struct net_device*) ;
 int setup_mac_addr (int ) ;

__attribute__((used)) static int bfin_mac_set_mac_address(struct net_device *dev, void *p)
{
 struct sockaddr *addr = p;
 if (netif_running(dev))
  return -EBUSY;
 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);
 setup_mac_addr(dev->dev_addr);
 return 0;
}
