
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct gfar_private {int device_flags; int rxcoalescing; int txcoalescing; void* txic; TYPE_1__* regs; void* rxic; int * phydev; } ;
struct ethtool_coalesce {scalar_t__ rx_coalesce_usecs; scalar_t__ rx_max_coalesced_frames; scalar_t__ tx_coalesce_usecs; scalar_t__ tx_max_coalesced_frames; } ;
struct TYPE_2__ {int txic; int rxic; } ;


 int EINVAL ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int FSL_GIANFAR_DEV_HAS_COALESCE ;
 scalar_t__ GFAR_MAX_COAL_FRAMES ;
 scalar_t__ GFAR_MAX_COAL_USECS ;
 int gfar_usecs2ticks (struct gfar_private*,scalar_t__) ;
 int gfar_write (int *,void*) ;
 void* mk_ic_value (scalar_t__,int ) ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int pr_info (char*,scalar_t__) ;

__attribute__((used)) static int gfar_scoalesce(struct net_device *dev, struct ethtool_coalesce *cvals)
{
 struct gfar_private *priv = netdev_priv(dev);

 if (!(priv->device_flags & FSL_GIANFAR_DEV_HAS_COALESCE))
  return -EOPNOTSUPP;


 if ((cvals->rx_coalesce_usecs == 0) ||
     (cvals->rx_max_coalesced_frames == 0))
  priv->rxcoalescing = 0;
 else
  priv->rxcoalescing = 1;

 if (((void*)0) == priv->phydev)
  return -ENODEV;


 if (cvals->rx_coalesce_usecs > GFAR_MAX_COAL_USECS) {
  pr_info("Coalescing is limited to %d microseconds\n",
    GFAR_MAX_COAL_USECS);
  return -EINVAL;
 }

 if (cvals->rx_max_coalesced_frames > GFAR_MAX_COAL_FRAMES) {
  pr_info("Coalescing is limited to %d frames\n",
    GFAR_MAX_COAL_FRAMES);
  return -EINVAL;
 }

 priv->rxic = mk_ic_value(cvals->rx_max_coalesced_frames,
  gfar_usecs2ticks(priv, cvals->rx_coalesce_usecs));


 if ((cvals->tx_coalesce_usecs == 0) ||
     (cvals->tx_max_coalesced_frames == 0))
  priv->txcoalescing = 0;
 else
  priv->txcoalescing = 1;


 if (cvals->tx_coalesce_usecs > GFAR_MAX_COAL_USECS) {
  pr_info("Coalescing is limited to %d microseconds\n",
    GFAR_MAX_COAL_USECS);
  return -EINVAL;
 }

 if (cvals->tx_max_coalesced_frames > GFAR_MAX_COAL_FRAMES) {
  pr_info("Coalescing is limited to %d frames\n",
    GFAR_MAX_COAL_FRAMES);
  return -EINVAL;
 }

 priv->txic = mk_ic_value(cvals->tx_max_coalesced_frames,
  gfar_usecs2ticks(priv, cvals->tx_coalesce_usecs));

 gfar_write(&priv->regs->rxic, 0);
 if (priv->rxcoalescing)
  gfar_write(&priv->regs->rxic, priv->rxic);

 gfar_write(&priv->regs->txic, 0);
 if (priv->txcoalescing)
  gfar_write(&priv->regs->txic, priv->txic);

 return 0;
}
