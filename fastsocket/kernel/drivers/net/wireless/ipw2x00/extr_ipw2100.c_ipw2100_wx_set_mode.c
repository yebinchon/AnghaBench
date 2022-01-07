
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union iwreq_data {scalar_t__ mode; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int status; int action_mutex; TYPE_1__* ieee; } ;
struct TYPE_2__ {scalar_t__ iw_mode; } ;


 int EIO ;
 int IPW_DEBUG_WX (char*,scalar_t__) ;




 int STATUS_INITIALIZED ;
 int ipw2100_switch_mode (struct ipw2100_priv*,int const) ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw2100_wx_set_mode(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 struct ipw2100_priv *priv = libipw_priv(dev);
 int err = 0;

 IPW_DEBUG_WX("SET Mode -> %d\n", wrqu->mode);

 if (wrqu->mode == priv->ieee->iw_mode)
  return 0;

 mutex_lock(&priv->action_mutex);
 if (!(priv->status & STATUS_INITIALIZED)) {
  err = -EIO;
  goto done;
 }

 switch (wrqu->mode) {





 case 131:
  err = ipw2100_switch_mode(priv, 131);
  break;
 case 129:
 case 130:
 default:
  err = ipw2100_switch_mode(priv, 129);
  break;
 }

      done:
 mutex_unlock(&priv->action_mutex);
 return err;
}
