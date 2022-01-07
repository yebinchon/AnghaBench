
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct bcm_enet_priv {scalar_t__ pause_tx; scalar_t__ pause_rx; scalar_t__ force_duplex_full; scalar_t__ force_speed_100; } ;


 int bcm_enet_set_duplex (struct bcm_enet_priv*,scalar_t__) ;
 int bcm_enet_set_flow (struct bcm_enet_priv*,scalar_t__,scalar_t__) ;
 struct bcm_enet_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int pr_info (char*,int ,int,char*,char*,char*) ;

__attribute__((used)) static void bcm_enet_adjust_link(struct net_device *dev)
{
 struct bcm_enet_priv *priv;

 priv = netdev_priv(dev);
 bcm_enet_set_duplex(priv, priv->force_duplex_full);
 bcm_enet_set_flow(priv, priv->pause_rx, priv->pause_tx);
 netif_carrier_on(dev);

 pr_info("%s: link forced UP - %d/%s - flow control %s/%s\n",
  dev->name,
  priv->force_speed_100 ? 100 : 10,
  priv->force_duplex_full ? "full" : "half",
  priv->pause_rx ? "rx" : "off",
  priv->pause_tx ? "tx" : "off");
}
