
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct orinoco_private {int dummy; } ;
struct net_device {int dummy; } ;
struct hermes_rx_descriptor {int silence; int signal; } ;


 scalar_t__ ETH_ALEN ;
 scalar_t__ SPY_NUMBER (struct orinoco_private*) ;
 struct orinoco_private* ndev_priv (struct net_device*) ;
 int orinoco_spy_gather (struct net_device*,scalar_t__,int ,int ) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;

__attribute__((used)) static void orinoco_stat_gather(struct net_device *dev,
    struct sk_buff *skb,
    struct hermes_rx_descriptor *desc)
{
 struct orinoco_private *priv = ndev_priv(dev);
 if (SPY_NUMBER(priv)) {
  orinoco_spy_gather(dev, skb_mac_header(skb) + ETH_ALEN,
       desc->signal, desc->silence);
 }
}
