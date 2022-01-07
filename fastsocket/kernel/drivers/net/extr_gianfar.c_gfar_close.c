
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gfar_private {int * phydev; int reset_task; int rx_recycle; int napi; } ;


 int cancel_work_sync (int *) ;
 int napi_disable (int *) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_disconnect (int *) ;
 int skb_queue_purge (int *) ;
 int stop_gfar (struct net_device*) ;

__attribute__((used)) static int gfar_close(struct net_device *dev)
{
 struct gfar_private *priv = netdev_priv(dev);

 napi_disable(&priv->napi);

 skb_queue_purge(&priv->rx_recycle);
 cancel_work_sync(&priv->reset_task);
 stop_gfar(dev);


 phy_disconnect(priv->phydev);
 priv->phydev = ((void*)0);

 netif_stop_queue(dev);

 return 0;
}
