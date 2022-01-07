
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {int bitratemode; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; int fixed; scalar_t__ disabled; } ;


 int EBUSY ;
 struct orinoco_private* ndev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int orinoco_get_ratemode_cfg (int ,int*,int*) ;
 int orinoco_hw_get_act_bitrate (struct orinoco_private*,int*) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;

__attribute__((used)) static int orinoco_ioctl_getrate(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_param *rrq,
     char *extra)
{
 struct orinoco_private *priv = ndev_priv(dev);
 int err = 0;
 int bitrate, automatic;
 unsigned long flags;

 if (orinoco_lock(priv, &flags) != 0)
  return -EBUSY;

 orinoco_get_ratemode_cfg(priv->bitratemode, &bitrate, &automatic);



 if (netif_running(dev)) {
  int act_bitrate;
  int lerr;


  lerr = orinoco_hw_get_act_bitrate(priv, &act_bitrate);
  if (!lerr)
   bitrate = act_bitrate;
 }

 orinoco_unlock(priv, &flags);

 rrq->value = bitrate;
 rrq->fixed = !automatic;
 rrq->disabled = 0;

 return err;
}
