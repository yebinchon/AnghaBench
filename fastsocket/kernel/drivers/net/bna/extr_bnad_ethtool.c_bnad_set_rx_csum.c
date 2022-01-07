
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct bnad {int conf_mutex; int rx_csum; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bnad* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
bnad_set_rx_csum(struct net_device *netdev, u32 rx_csum)
{
 struct bnad *bnad = netdev_priv(netdev);

 mutex_lock(&bnad->conf_mutex);
 bnad->rx_csum = rx_csum;
 mutex_unlock(&bnad->conf_mutex);
 return 0;
}
