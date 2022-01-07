
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct gfar_private {int wol_en; int napi; int rx_recycle; } ;


 int device_set_wakeup_enable (int *,int ) ;
 int gfar_set_mac_address (struct net_device*) ;
 int init_phy (struct net_device*) ;
 int init_registers (struct net_device*) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int skb_queue_head_init (int *) ;
 int startup_gfar (struct net_device*) ;

__attribute__((used)) static int gfar_enet_open(struct net_device *dev)
{
 struct gfar_private *priv = netdev_priv(dev);
 int err;

 napi_enable(&priv->napi);

 skb_queue_head_init(&priv->rx_recycle);


 init_registers(dev);

 gfar_set_mac_address(dev);

 err = init_phy(dev);

 if(err) {
  napi_disable(&priv->napi);
  return err;
 }

 err = startup_gfar(dev);
 if (err) {
  napi_disable(&priv->napi);
  return err;
 }

 netif_start_queue(dev);

 device_set_wakeup_enable(&dev->dev, priv->wol_en);

 return err;
}
