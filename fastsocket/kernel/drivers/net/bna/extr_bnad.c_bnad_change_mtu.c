
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct bnad {int conf_mutex; } ;


 int BNAD_JUMBO_MTU ;
 int EBUSY ;
 int EINVAL ;
 int ETH_FCS_LEN ;
 int ETH_HLEN ;
 int ETH_ZLEN ;
 int VLAN_HLEN ;
 int bnad_mtu_set (struct bnad*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bnad* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
bnad_change_mtu(struct net_device *netdev, int new_mtu)
{
 int err, mtu = netdev->mtu;
 struct bnad *bnad = netdev_priv(netdev);

 if (new_mtu + ETH_HLEN < ETH_ZLEN || new_mtu > BNAD_JUMBO_MTU)
  return -EINVAL;

 mutex_lock(&bnad->conf_mutex);

 netdev->mtu = new_mtu;

 mtu = ETH_HLEN + VLAN_HLEN + new_mtu + ETH_FCS_LEN;
 err = bnad_mtu_set(bnad, mtu);
 if (err)
  err = -EBUSY;

 mutex_unlock(&bnad->conf_mutex);
 return err;
}
