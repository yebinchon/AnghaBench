
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disabled; int value; scalar_t__ fixed; } ;
union iwreq_data {TYPE_1__ rts; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int mutex; int rts_threshold; } ;


 int DEFAULT_RTS_THRESHOLD ;
 int IPW_DEBUG_WX (char*,int ) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw_wx_get_rts(struct net_device *dev,
     struct iw_request_info *info,
     union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);
 mutex_lock(&priv->mutex);
 wrqu->rts.value = priv->rts_threshold;
 wrqu->rts.fixed = 0;
 wrqu->rts.disabled = (wrqu->rts.value == DEFAULT_RTS_THRESHOLD);
 mutex_unlock(&priv->mutex);
 IPW_DEBUG_WX("GET RTS Threshold -> %d\n", wrqu->rts.value);
 return 0;
}
