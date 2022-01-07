
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fixed; int value; } ;
union iwreq_data {TYPE_1__ bitrate; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int config; int mutex; int last_rate; } ;


 int CFG_FIXED_RATE ;
 int IPW_DEBUG_WX (char*,int ) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw_wx_get_rate(struct net_device *dev,
      struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);
 mutex_lock(&priv->mutex);
 wrqu->bitrate.value = priv->last_rate;
 wrqu->bitrate.fixed = (priv->config & CFG_FIXED_RATE) ? 1 : 0;
 mutex_unlock(&priv->mutex);
 IPW_DEBUG_WX("GET Rate -> %d\n", wrqu->bitrate.value);
 return 0;
}
