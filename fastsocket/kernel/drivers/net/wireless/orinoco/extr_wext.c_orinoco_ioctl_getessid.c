
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {int desired_essid; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; int flags; } ;


 int EBUSY ;
 int IW_ESSID_MAX_SIZE ;
 int memcpy (char*,int ,int ) ;
 struct orinoco_private* ndev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int orinoco_hw_get_essid (struct orinoco_private*,int*,char*) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;
 int strlen (int ) ;

__attribute__((used)) static int orinoco_ioctl_getessid(struct net_device *dev,
      struct iw_request_info *info,
      struct iw_point *erq,
      char *essidbuf)
{
 struct orinoco_private *priv = ndev_priv(dev);
 int active;
 int err = 0;
 unsigned long flags;

 if (netif_running(dev)) {
  err = orinoco_hw_get_essid(priv, &active, essidbuf);
  if (err < 0)
   return err;
  erq->length = err;
 } else {
  if (orinoco_lock(priv, &flags) != 0)
   return -EBUSY;
  memcpy(essidbuf, priv->desired_essid, IW_ESSID_MAX_SIZE);
  erq->length = strlen(priv->desired_essid);
  orinoco_unlock(priv, &flags);
 }

 erq->flags = 1;

 return 0;
}
