
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int nick; } ;


 int E2BIG ;
 int IPW_DEBUG_WX (char*,int ) ;
 scalar_t__ IW_ESSID_MAX_SIZE ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int memcpy (int ,char*,scalar_t__) ;
 int memset (int ,int ,int) ;
 scalar_t__ min (size_t,int) ;

__attribute__((used)) static int ipw2100_wx_set_nick(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{




 struct ipw2100_priv *priv = libipw_priv(dev);

 if (wrqu->data.length > IW_ESSID_MAX_SIZE)
  return -E2BIG;

 wrqu->data.length = min((size_t) wrqu->data.length, sizeof(priv->nick));
 memset(priv->nick, 0, sizeof(priv->nick));
 memcpy(priv->nick, extra, wrqu->data.length);

 IPW_DEBUG_WX("SET Nickname -> %s\n", priv->nick);

 return 0;
}
