
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;
struct ks8851_net {struct net_device* netdev; } ;


 int ks8851_write_mac_addr (struct net_device*) ;
 int random_ether_addr (int ) ;

__attribute__((used)) static void ks8851_init_mac(struct ks8851_net *ks)
{
 struct net_device *dev = ks->netdev;

 random_ether_addr(dev->dev_addr);
 ks8851_write_mac_addr(dev);
}
