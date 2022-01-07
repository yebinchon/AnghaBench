
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;
struct ks8695_priv {int dummy; } ;


 int EADDRNOTAVAIL ;
 int is_valid_ether_addr (int ) ;
 int ks8695_init_net (struct ks8695_priv*) ;
 int ks8695_reset (struct ks8695_priv*) ;
 int ks8695_shutdown (struct ks8695_priv*) ;
 int ks8695_update_mac (struct ks8695_priv*) ;
 struct ks8695_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;

__attribute__((used)) static int
ks8695_open(struct net_device *ndev)
{
 struct ks8695_priv *ksp = netdev_priv(ndev);
 int ret;

 if (!is_valid_ether_addr(ndev->dev_addr))
  return -EADDRNOTAVAIL;

 ks8695_reset(ksp);

 ks8695_update_mac(ksp);

 ret = ks8695_init_net(ksp);
 if (ret) {
  ks8695_shutdown(ksp);
  return ret;
 }

 netif_start_queue(ndev);

 return 0;
}
