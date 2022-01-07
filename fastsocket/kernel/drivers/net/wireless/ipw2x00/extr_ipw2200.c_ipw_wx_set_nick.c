
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int mutex; int nick; } ;


 int E2BIG ;
 int IPW_DEBUG_TRACE (char*) ;
 int IPW_DEBUG_WX (char*,char*) ;
 scalar_t__ IW_ESSID_MAX_SIZE ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int memcpy (int ,char*,scalar_t__) ;
 int memset (int ,int ,int) ;
 scalar_t__ min (size_t,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipw_wx_set_nick(struct net_device *dev,
      struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);

 IPW_DEBUG_WX("Setting nick to '%s'\n", extra);
 if (wrqu->data.length > IW_ESSID_MAX_SIZE)
  return -E2BIG;
 mutex_lock(&priv->mutex);
 wrqu->data.length = min((size_t) wrqu->data.length, sizeof(priv->nick));
 memset(priv->nick, 0, sizeof(priv->nick));
 memcpy(priv->nick, extra, wrqu->data.length);
 IPW_DEBUG_TRACE("<<\n");
 mutex_unlock(&priv->mutex);
 return 0;

}
