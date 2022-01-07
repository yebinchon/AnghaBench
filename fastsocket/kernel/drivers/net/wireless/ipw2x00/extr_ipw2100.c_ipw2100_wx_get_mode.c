
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union iwreq_data {int mode; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {TYPE_1__* ieee; } ;
struct TYPE_2__ {int iw_mode; } ;


 int IPW_DEBUG_WX (char*,int ) ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;

__attribute__((used)) static int ipw2100_wx_get_mode(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{




 struct ipw2100_priv *priv = libipw_priv(dev);

 wrqu->mode = priv->ieee->iw_mode;
 IPW_DEBUG_WX("GET Mode -> %d\n", wrqu->mode);

 return 0;
}
