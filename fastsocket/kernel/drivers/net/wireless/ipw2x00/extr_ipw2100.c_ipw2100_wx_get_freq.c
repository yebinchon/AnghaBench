
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m; scalar_t__ e; } ;
union iwreq_data {TYPE_1__ freq; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int config; int status; int channel; } ;


 int CFG_STATIC_CHANNEL ;
 int IPW_DEBUG_WX (char*,int ) ;
 int STATUS_ASSOCIATED ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;

__attribute__((used)) static int ipw2100_wx_get_freq(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{




 struct ipw2100_priv *priv = libipw_priv(dev);

 wrqu->freq.e = 0;



 if (priv->config & CFG_STATIC_CHANNEL ||
     priv->status & STATUS_ASSOCIATED)
  wrqu->freq.m = priv->channel;
 else
  wrqu->freq.m = 0;

 IPW_DEBUG_WX("GET Freq/Channel -> %d\n", priv->channel);
 return 0;

}
