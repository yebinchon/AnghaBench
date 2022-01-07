
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int wiphy; } ;
struct libipw_device {TYPE_1__ wdev; int crypt_info; } ;


 int free_netdev (struct net_device*) ;
 int lib80211_crypt_info_free (int *) ;
 int libipw_networks_free (struct libipw_device*) ;
 struct libipw_device* netdev_priv (struct net_device*) ;
 int wiphy_free (int ) ;

void free_libipw(struct net_device *dev, int monitor)
{
 struct libipw_device *ieee = netdev_priv(dev);

 lib80211_crypt_info_free(&ieee->crypt_info);

 libipw_networks_free(ieee);


 if (!monitor)
  wiphy_free(ieee->wdev.wiphy);

 free_netdev(dev);
}
