
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct cpmac_priv {int oldduplex; scalar_t__ oldspeed; int oldlink; int lock; TYPE_1__* phy; } ;
struct TYPE_2__ {int duplex; scalar_t__ speed; scalar_t__ link; } ;


 scalar_t__ net_ratelimit () ;
 struct cpmac_priv* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_link (struct cpmac_priv*) ;
 int netif_tx_start_all_queues (struct net_device*) ;
 int phy_print_status (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cpmac_adjust_link(struct net_device *dev)
{
 struct cpmac_priv *priv = netdev_priv(dev);
 int new_state = 0;

 spin_lock(&priv->lock);
 if (priv->phy->link) {
  netif_tx_start_all_queues(dev);
  if (priv->phy->duplex != priv->oldduplex) {
   new_state = 1;
   priv->oldduplex = priv->phy->duplex;
  }

  if (priv->phy->speed != priv->oldspeed) {
   new_state = 1;
   priv->oldspeed = priv->phy->speed;
  }

  if (!priv->oldlink) {
   new_state = 1;
   priv->oldlink = 1;
  }
 } else if (priv->oldlink) {
  new_state = 1;
  priv->oldlink = 0;
  priv->oldspeed = 0;
  priv->oldduplex = -1;
 }

 if (new_state && netif_msg_link(priv) && net_ratelimit())
  phy_print_status(priv->phy);

 spin_unlock(&priv->lock);
}
