
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int enablehwauto; int cur_rate; int fwrelease; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; int fixed; } ;
typedef int rates ;


 int CMD_ACT_SET ;
 int EINVAL ;
 int LBS_DEB_WEXT ;
 int MAX_RATES ;
 int POW_ADAPT_DEFAULT_P0 ;
 int POW_ADAPT_DEFAULT_P1 ;
 int POW_ADAPT_DEFAULT_P2 ;
 int TPC_DEFAULT_P0 ;
 int TPC_DEFAULT_P1 ;
 int TPC_DEFAULT_P2 ;
 int copy_active_data_rates (struct lbs_private*,int*) ;
 int lbs_cmd_802_11_rate_adapt_rateset (struct lbs_private*,int ) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_deb_wext (char*,int) ;
 int lbs_pr_alert (char*,int) ;
 int lbs_set_data_rate (struct lbs_private*,int) ;
 int lbs_set_power_adapt_cfg (struct lbs_private*,int ,int ,int ,int ) ;
 int lbs_set_tpc_cfg (struct lbs_private*,int ,int ,int ,int ,int) ;
 int memchr (int*,int,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int lbs_set_rate(struct net_device *dev, struct iw_request_info *info,
    struct iw_param *vwrq, char *extra)
{
 struct lbs_private *priv = dev->ml_priv;
 u8 new_rate = 0;
 int ret = -EINVAL;
 u8 rates[MAX_RATES + 1];

 lbs_deb_enter(LBS_DEB_WEXT);
 lbs_deb_wext("vwrq->value %d\n", vwrq->value);
 lbs_deb_wext("vwrq->fixed %d\n", vwrq->fixed);

 if (vwrq->fixed && vwrq->value == -1)
  goto out;


 priv->enablehwauto = !vwrq->fixed;

 if (vwrq->value == -1)
  priv->cur_rate = 0;
 else {
  if (vwrq->value % 100000)
   goto out;

  new_rate = vwrq->value / 500000;
  priv->cur_rate = new_rate;

  memset(rates, 0, sizeof(rates));
  copy_active_data_rates(priv, rates);
  if (!memchr(rates, new_rate, sizeof(rates))) {
   lbs_pr_alert("fixed data rate 0x%X out of range\n",
    new_rate);
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


 ret = lbs_cmd_802_11_rate_adapt_rateset(priv, CMD_ACT_SET);


 if (ret)
  ret = lbs_set_data_rate(priv, new_rate);

out:
 lbs_deb_leave_args(LBS_DEB_WEXT, "ret %d", ret);
 return ret;
}
