
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; scalar_t__ flags; int fixed; int disabled; } ;
union iwreq_data {TYPE_1__ power; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {scalar_t__ tx_power; int mutex; } ;


 int EINPROGRESS ;
 int EINVAL ;
 scalar_t__ IPW_TX_POWER_DEFAULT ;
 scalar_t__ IPW_TX_POWER_MAX ;
 scalar_t__ IPW_TX_POWER_MIN ;
 scalar_t__ IW_TXPOW_DBM ;
 scalar_t__ ipw_radio_kill_sw (struct ipw_priv*,int ) ;
 int ipw_set_tx_power (struct ipw_priv*) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw_wx_set_txpow(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);
 int err = 0;

 mutex_lock(&priv->mutex);
 if (ipw_radio_kill_sw(priv, wrqu->power.disabled)) {
  err = -EINPROGRESS;
  goto out;
 }

 if (!wrqu->power.fixed)
  wrqu->power.value = IPW_TX_POWER_DEFAULT;

 if (wrqu->power.flags != IW_TXPOW_DBM) {
  err = -EINVAL;
  goto out;
 }

 if ((wrqu->power.value > IPW_TX_POWER_MAX) ||
     (wrqu->power.value < IPW_TX_POWER_MIN)) {
  err = -EINVAL;
  goto out;
 }

 priv->tx_power = wrqu->power.value;
 err = ipw_set_tx_power(priv);
      out:
 mutex_unlock(&priv->mutex);
 return err;
}
