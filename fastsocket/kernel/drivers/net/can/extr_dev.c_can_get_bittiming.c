
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct can_priv {scalar_t__ bittiming_const; } ;
struct can_bittiming {int tq; } ;


 int can_calc_bittiming (struct net_device*,struct can_bittiming*) ;
 int can_fixup_bittiming (struct net_device*,struct can_bittiming*) ;
 struct can_priv* netdev_priv (struct net_device*) ;

int can_get_bittiming(struct net_device *dev, struct can_bittiming *bt)
{
 struct can_priv *priv = netdev_priv(dev);
 int err;


 if (priv->bittiming_const) {


  if (!bt->tq)

   err = can_calc_bittiming(dev, bt);
  else

   err = can_fixup_bittiming(dev, bt);
  if (err)
   return err;
 }

 return 0;
}
