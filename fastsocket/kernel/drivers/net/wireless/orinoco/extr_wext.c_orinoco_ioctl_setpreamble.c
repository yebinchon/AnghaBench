
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {int preamble; int has_preamble; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int EBUSY ;
 int EINPROGRESS ;
 int EOPNOTSUPP ;
 struct orinoco_private* ndev_priv (struct net_device*) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;

__attribute__((used)) static int orinoco_ioctl_setpreamble(struct net_device *dev,
         struct iw_request_info *info,
         void *wrqu,
         char *extra)
{
 struct orinoco_private *priv = ndev_priv(dev);
 unsigned long flags;
 int val;

 if (!priv->has_preamble)
  return -EOPNOTSUPP;






 val = *((int *) extra);

 if (orinoco_lock(priv, &flags) != 0)
  return -EBUSY;

 if (val)
  priv->preamble = 1;
 else
  priv->preamble = 0;

 orinoco_unlock(priv, &flags);

 return -EINPROGRESS;
}
