
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int dev; scalar_t__ mc_count; } ;
struct enc28j60_net {int rxfilter; int setrx_work; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int RXFILTER_MULTI ;
 int RXFILTER_NORMAL ;
 int RXFILTER_PROMISC ;
 int dev_info (int *,char*,...) ;
 struct enc28j60_net* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_link (struct enc28j60_net*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void enc28j60_set_multicast_list(struct net_device *dev)
{
 struct enc28j60_net *priv = netdev_priv(dev);
 int oldfilter = priv->rxfilter;

 if (dev->flags & IFF_PROMISC) {
  if (netif_msg_link(priv))
   dev_info(&dev->dev, "promiscuous mode\n");
  priv->rxfilter = RXFILTER_PROMISC;
 } else if ((dev->flags & IFF_ALLMULTI) || dev->mc_count) {
  if (netif_msg_link(priv))
   dev_info(&dev->dev, "%smulticast mode\n",
    (dev->flags & IFF_ALLMULTI) ? "all-" : "");
  priv->rxfilter = RXFILTER_MULTI;
 } else {
  if (netif_msg_link(priv))
   dev_info(&dev->dev, "normal mode\n");
  priv->rxfilter = RXFILTER_NORMAL;
 }

 if (oldfilter != priv->rxfilter)
  schedule_work(&priv->setrx_work);
}
