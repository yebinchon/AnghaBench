
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value; scalar_t__ disabled; } ;
struct TYPE_4__ {int fixed; int value; } ;
union iwreq_data {TYPE_1__ power; TYPE_2__ sens; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int mutex; int roaming_threshold; } ;


 int IPW_DEBUG_WX (char*,char*,int ) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw_wx_get_sens(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);
 mutex_lock(&priv->mutex);
 wrqu->sens.fixed = 1;
 wrqu->sens.value = priv->roaming_threshold;
 mutex_unlock(&priv->mutex);

 IPW_DEBUG_WX("GET roaming threshold -> %s %d\n",
       wrqu->power.disabled ? "OFF" : "ON", wrqu->power.value);

 return 0;
}
