
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int features; } ;
struct bnad {int conf_mutex; } ;


 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bnad* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
bnad_set_tso(struct net_device *netdev, u32 tso)
{
 struct bnad *bnad = netdev_priv(netdev);

 mutex_lock(&bnad->conf_mutex);
 if (tso) {
  netdev->features |= NETIF_F_TSO;
  netdev->features |= NETIF_F_TSO6;
 } else {
  netdev->features &= ~NETIF_F_TSO;
  netdev->features &= ~NETIF_F_TSO6;
 }
 mutex_unlock(&bnad->conf_mutex);
 return 0;
}
