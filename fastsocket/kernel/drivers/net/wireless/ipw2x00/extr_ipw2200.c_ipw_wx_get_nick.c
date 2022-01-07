
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw_priv {int mutex; int nick; } ;


 int IPW_DEBUG_WX (char*) ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int memcpy (char*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlen (int ) ;

__attribute__((used)) static int ipw_wx_get_nick(struct net_device *dev,
      struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);
 IPW_DEBUG_WX("Getting nick\n");
 mutex_lock(&priv->mutex);
 wrqu->data.length = strlen(priv->nick);
 memcpy(extra, priv->nick, wrqu->data.length);
 wrqu->data.flags = 1;
 mutex_unlock(&priv->mutex);
 return 0;
}
