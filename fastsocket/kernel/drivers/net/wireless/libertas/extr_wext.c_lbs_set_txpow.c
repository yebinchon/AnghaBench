
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int fwrelease; scalar_t__ txpower_max; scalar_t__ txpower_min; int radio_on; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {scalar_t__ fixed; int flags; scalar_t__ disabled; int value; } ;
typedef scalar_t__ s16 ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int IW_TXPOW_DBM ;
 int IW_TXPOW_TYPE ;
 int LBS_DEB_WEXT ;
 int POW_ADAPT_DEFAULT_P0 ;
 int POW_ADAPT_DEFAULT_P1 ;
 int POW_ADAPT_DEFAULT_P2 ;
 int RADIO_PREAMBLE_AUTO ;
 int TPC_DEFAULT_P0 ;
 int TPC_DEFAULT_P1 ;
 int TPC_DEFAULT_P2 ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_deb_wext (char*,scalar_t__) ;
 int lbs_set_power_adapt_cfg (struct lbs_private*,int,int ,int ,int ) ;
 int lbs_set_radio (struct lbs_private*,int ,int) ;
 int lbs_set_tpc_cfg (struct lbs_private*,int ,int ,int ,int ,int) ;
 int lbs_set_tx_power (struct lbs_private*,scalar_t__) ;

__attribute__((used)) static int lbs_set_txpow(struct net_device *dev, struct iw_request_info *info,
     struct iw_param *vwrq, char *extra)
{
 int ret = 0;
 struct lbs_private *priv = dev->ml_priv;
 s16 dbm = (s16) vwrq->value;

 lbs_deb_enter(LBS_DEB_WEXT);

 if (vwrq->disabled) {
  lbs_set_radio(priv, RADIO_PREAMBLE_AUTO, 0);
  goto out;
 }

 if (vwrq->fixed == 0) {



  if (priv->fwrelease < 0x09000000) {
   ret = lbs_set_power_adapt_cfg(priv, 1,
     POW_ADAPT_DEFAULT_P0,
     POW_ADAPT_DEFAULT_P1,
     POW_ADAPT_DEFAULT_P2);
   if (ret)
    goto out;
  }
  ret = lbs_set_tpc_cfg(priv, 0, TPC_DEFAULT_P0, TPC_DEFAULT_P1,
    TPC_DEFAULT_P2, 1);
  if (ret)
   goto out;
  dbm = priv->txpower_max;
 } else {


  if ((vwrq->flags & IW_TXPOW_TYPE) != IW_TXPOW_DBM) {
   ret = -EOPNOTSUPP;
   goto out;
  }



  if (priv->txpower_min && (dbm < priv->txpower_min)) {
   ret = -EINVAL;
   goto out;
  }

  if (priv->txpower_max && (dbm > priv->txpower_max)) {
   ret = -EINVAL;
   goto out;
  }
  if (priv->fwrelease < 0x09000000) {
   ret = lbs_set_power_adapt_cfg(priv, 0,
     POW_ADAPT_DEFAULT_P0,
     POW_ADAPT_DEFAULT_P1,
     POW_ADAPT_DEFAULT_P2);
   if (ret)
    goto out;
  }
  ret = lbs_set_tpc_cfg(priv, 0, TPC_DEFAULT_P0, TPC_DEFAULT_P1,
    TPC_DEFAULT_P2, 1);
  if (ret)
   goto out;
 }


 if (!priv->radio_on) {
  ret = lbs_set_radio(priv, RADIO_PREAMBLE_AUTO, 1);
  if (ret)
   goto out;
 }

 lbs_deb_wext("txpower set %d dBm\n", dbm);

 ret = lbs_set_tx_power(priv, dbm);

out:
 lbs_deb_leave_args(LBS_DEB_WEXT, "ret %d", ret);
 return ret;
}
