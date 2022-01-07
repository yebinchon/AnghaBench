
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int disabled; int value; scalar_t__ fixed; } ;
union iwreq_data {TYPE_2__ frag; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int mutex; TYPE_1__* ieee; } ;
struct TYPE_3__ {int fts; } ;


 int DEFAULT_FTS ;
 int IPW_DEBUG_WX (char*,int ) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw_wx_get_frag(struct net_device *dev,
      struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);
 mutex_lock(&priv->mutex);
 wrqu->frag.value = priv->ieee->fts;
 wrqu->frag.fixed = 0;
 wrqu->frag.disabled = (wrqu->frag.value == DEFAULT_FTS);
 mutex_unlock(&priv->mutex);
 IPW_DEBUG_WX("GET Frag Threshold -> %d\n", wrqu->frag.value);

 return 0;
}
