
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int do_set_mode; int do_set_bittiming; int * bittiming_const; } ;
struct sja1000_priv {void* priv; TYPE_1__ can; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 struct net_device* alloc_candev (int) ;
 struct sja1000_priv* netdev_priv (struct net_device*) ;
 int sja1000_bittiming_const ;
 int sja1000_set_bittiming ;
 int sja1000_set_mode ;

struct net_device *alloc_sja1000dev(int sizeof_priv)
{
 struct net_device *dev;
 struct sja1000_priv *priv;

 dev = alloc_candev(sizeof(struct sja1000_priv) + sizeof_priv);
 if (!dev)
  return ((void*)0);

 priv = netdev_priv(dev);

 priv->dev = dev;
 priv->can.bittiming_const = &sja1000_bittiming_const;
 priv->can.do_set_bittiming = sja1000_set_bittiming;
 priv->can.do_set_mode = sja1000_set_mode;

 if (sizeof_priv)
  priv->priv = (void *)priv + sizeof(struct sja1000_priv);

 return dev;
}
