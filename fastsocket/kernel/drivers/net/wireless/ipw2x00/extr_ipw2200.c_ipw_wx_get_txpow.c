
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fixed; int disabled; int value; int flags; } ;
union iwreq_data {TYPE_1__ power; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int status; int mutex; int tx_power; } ;


 int IPW_DEBUG_WX (char*,char*,int ) ;
 int IW_TXPOW_DBM ;
 int STATUS_RF_KILL_MASK ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw_wx_get_txpow(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);
 mutex_lock(&priv->mutex);
 wrqu->power.value = priv->tx_power;
 wrqu->power.fixed = 1;
 wrqu->power.flags = IW_TXPOW_DBM;
 wrqu->power.disabled = (priv->status & STATUS_RF_KILL_MASK) ? 1 : 0;
 mutex_unlock(&priv->mutex);

 IPW_DEBUG_WX("GET TX Power -> %s %d\n",
       wrqu->power.disabled ? "OFF" : "ON", wrqu->power.value);

 return 0;
}
