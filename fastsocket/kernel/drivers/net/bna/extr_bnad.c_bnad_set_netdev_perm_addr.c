
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_len; int dev_addr; int perm_addr; } ;
struct bnad {int perm_addr; struct net_device* netdev; } ;


 scalar_t__ is_zero_ether_addr (int ) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static void
bnad_set_netdev_perm_addr(struct bnad *bnad)
{
 struct net_device *netdev = bnad->netdev;

 memcpy(netdev->perm_addr, &bnad->perm_addr, netdev->addr_len);
 if (is_zero_ether_addr(netdev->dev_addr))
  memcpy(netdev->dev_addr, &bnad->perm_addr, netdev->addr_len);
}
