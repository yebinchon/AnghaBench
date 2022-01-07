
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct iw_freq {scalar_t__ m; int e; } ;
union iwreq_data {struct iw_freq freq; } ;
typedef scalar_t__ u8 ;
struct net_device {int dummy; } ;
struct libipw_geo {TYPE_2__* a; TYPE_1__* bg; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int mutex; TYPE_3__* ieee; } ;
struct TYPE_9__ {scalar_t__ iw_mode; } ;
struct TYPE_8__ {scalar_t__ flags; } ;
struct TYPE_7__ {scalar_t__ flags; } ;


 int EINVAL ;
 int IPW_DEBUG_WX (char*,...) ;
 scalar_t__ IW_MODE_ADHOC ;
 int LIBIPW_24GHZ_BAND ;
 scalar_t__ LIBIPW_CH_PASSIVE_ONLY ;
 int ipw_set_channel (struct ipw_priv*,scalar_t__) ;
 int libipw_channel_to_index (TYPE_3__*,scalar_t__) ;
 scalar_t__ libipw_freq_to_channel (TYPE_3__*,scalar_t__) ;
 struct libipw_geo* libipw_get_geo (TYPE_3__*) ;
 int libipw_is_valid_channel (TYPE_3__*,scalar_t__) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw_wx_set_freq(struct net_device *dev,
      struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);
 const struct libipw_geo *geo = libipw_get_geo(priv->ieee);
 struct iw_freq *fwrq = &wrqu->freq;
 int ret = 0, i;
 u8 channel, flags;
 int band;

 if (fwrq->m == 0) {
  IPW_DEBUG_WX("SET Freq/Channel -> any\n");
  mutex_lock(&priv->mutex);
  ret = ipw_set_channel(priv, 0);
  mutex_unlock(&priv->mutex);
  return ret;
 }

 if (fwrq->e == 1) {
  channel = libipw_freq_to_channel(priv->ieee, fwrq->m);
  if (channel == 0)
   return -EINVAL;
 } else
  channel = fwrq->m;

 if (!(band = libipw_is_valid_channel(priv->ieee, channel)))
  return -EINVAL;

 if (priv->ieee->iw_mode == IW_MODE_ADHOC) {
  i = libipw_channel_to_index(priv->ieee, channel);
  if (i == -1)
   return -EINVAL;

  flags = (band == LIBIPW_24GHZ_BAND) ?
      geo->bg[i].flags : geo->a[i].flags;
  if (flags & LIBIPW_CH_PASSIVE_ONLY) {
   IPW_DEBUG_WX("Invalid Ad-Hoc channel for 802.11a\n");
   return -EINVAL;
  }
 }

 IPW_DEBUG_WX("SET Freq/Channel -> %d\n", fwrq->m);
 mutex_lock(&priv->mutex);
 ret = ipw_set_channel(priv, channel);
 mutex_unlock(&priv->mutex);
 return ret;
}
