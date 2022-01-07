
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int status; int user_requested_scan; int action_mutex; } ;


 int EIO ;
 int IPW_DEBUG_WX (char*) ;
 int STATUS_INITIALIZED ;
 scalar_t__ ipw2100_set_scan_options (struct ipw2100_priv*) ;
 scalar_t__ ipw2100_start_scan (struct ipw2100_priv*) ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw2100_wx_set_scan(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{
 struct ipw2100_priv *priv = libipw_priv(dev);
 int err = 0;

 mutex_lock(&priv->action_mutex);
 if (!(priv->status & STATUS_INITIALIZED)) {
  err = -EIO;
  goto done;
 }

 IPW_DEBUG_WX("Initiating scan...\n");

 priv->user_requested_scan = 1;
 if (ipw2100_set_scan_options(priv) || ipw2100_start_scan(priv)) {
  IPW_DEBUG_WX("Start scan failed.\n");



 }

      done:
 mutex_unlock(&priv->action_mutex);
 return err;
}
