
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union iwreq_data {int mode; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int mutex; int adapter_restart; TYPE_2__* ieee; TYPE_1__* net_dev; } ;
struct TYPE_4__ {int iw_mode; } ;
struct TYPE_3__ {int type; } ;


 int ARPHRD_ETHER ;
 int ARPHRD_IEEE80211 ;
 int ARPHRD_IEEE80211_RADIOTAP ;
 int EINVAL ;
 int IPW_DEBUG_WX (char*,int) ;




 int free_firmware () ;
 int ipw_sw_reset (struct ipw_priv*,int ) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static int ipw_wx_set_mode(struct net_device *dev,
      struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);
 int err = 0;

 IPW_DEBUG_WX("Set MODE: %d\n", wrqu->mode);

 switch (wrqu->mode) {



 case 131:
 case 129:
  break;
 case 130:
  wrqu->mode = 129;
  break;
 default:
  return -EINVAL;
 }
 if (wrqu->mode == priv->ieee->iw_mode)
  return 0;

 mutex_lock(&priv->mutex);

 ipw_sw_reset(priv, 0);
 free_firmware();

 priv->ieee->iw_mode = wrqu->mode;

 schedule_work(&priv->adapter_restart);
 mutex_unlock(&priv->mutex);
 return err;
}
