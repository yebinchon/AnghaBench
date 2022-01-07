
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; } ;
union iwreq_data {TYPE_1__ data; } ;
typedef int u8 ;
struct orinoco_private {scalar_t__ wpa_ie_len; int * wpa_ie; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IEEE80211_MAX_DATA_LEN ;
 int kfree (int *) ;
 int * kmemdup (char*,scalar_t__,int ) ;
 struct orinoco_private* ndev_priv (struct net_device*) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;

__attribute__((used)) static int orinoco_ioctl_set_genie(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *extra)
{
 struct orinoco_private *priv = ndev_priv(dev);
 u8 *buf;
 unsigned long flags;


 if ((wrqu->data.length > IEEE80211_MAX_DATA_LEN) ||
     (wrqu->data.length && (extra == ((void*)0))))
  return -EINVAL;

 if (wrqu->data.length) {
  buf = kmemdup(extra, wrqu->data.length, GFP_KERNEL);
  if (buf == ((void*)0))
   return -ENOMEM;
 } else
  buf = ((void*)0);

 if (orinoco_lock(priv, &flags) != 0) {
  kfree(buf);
  return -EBUSY;
 }

 kfree(priv->wpa_ie);
 priv->wpa_ie = buf;
 priv->wpa_ie_len = wrqu->data.length;

 if (priv->wpa_ie) {





 }

 orinoco_unlock(priv, &flags);
 return 0;
}
