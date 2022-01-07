
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; int fixed; scalar_t__ disabled; } ;
union iwreq_data {TYPE_1__ rts; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {scalar_t__ rts_threshold; int mutex; } ;


 scalar_t__ DEFAULT_RTS_THRESHOLD ;
 int EINVAL ;
 int IPW_DEBUG_WX (char*,scalar_t__) ;
 scalar_t__ MAX_RTS_THRESHOLD ;
 scalar_t__ MIN_RTS_THRESHOLD ;
 int ipw_send_rts_threshold (struct ipw_priv*,scalar_t__) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw_wx_set_rts(struct net_device *dev,
     struct iw_request_info *info,
     union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);
 mutex_lock(&priv->mutex);
 if (wrqu->rts.disabled || !wrqu->rts.fixed)
  priv->rts_threshold = DEFAULT_RTS_THRESHOLD;
 else {
  if (wrqu->rts.value < MIN_RTS_THRESHOLD ||
      wrqu->rts.value > MAX_RTS_THRESHOLD) {
   mutex_unlock(&priv->mutex);
   return -EINVAL;
  }
  priv->rts_threshold = wrqu->rts.value;
 }

 ipw_send_rts_threshold(priv, priv->rts_threshold);
 mutex_unlock(&priv->mutex);
 IPW_DEBUG_WX("SET RTS Threshold -> %d\n", priv->rts_threshold);
 return 0;
}
