
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ks8695_priv {int dummy; } ;


 int ks8695_init_net (struct ks8695_priv*) ;
 int ks8695_reset (struct ks8695_priv*) ;
 int ks8695_set_multicast (struct net_device*) ;
 int ks8695_shutdown (struct ks8695_priv*) ;
 int ks8695_update_mac (struct ks8695_priv*) ;
 struct ks8695_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static void
ks8695_timeout(struct net_device *ndev)
{
 struct ks8695_priv *ksp = netdev_priv(ndev);

 netif_stop_queue(ndev);
 ks8695_shutdown(ksp);

 ks8695_reset(ksp);

 ks8695_update_mac(ksp);




 ks8695_init_net(ksp);


 ks8695_set_multicast(ndev);


 netif_start_queue(ndev);
}
