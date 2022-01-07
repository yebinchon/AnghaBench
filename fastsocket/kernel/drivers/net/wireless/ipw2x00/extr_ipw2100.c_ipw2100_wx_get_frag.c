
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; int disabled; scalar_t__ fixed; } ;
union iwreq_data {TYPE_1__ frag; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int frag_threshold; } ;


 int FRAG_DISABLED ;
 int IPW_DEBUG_WX (char*,int) ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;

__attribute__((used)) static int ipw2100_wx_get_frag(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{




 struct ipw2100_priv *priv = libipw_priv(dev);
 wrqu->frag.value = priv->frag_threshold & ~FRAG_DISABLED;
 wrqu->frag.fixed = 0;
 wrqu->frag.disabled = (priv->frag_threshold & FRAG_DISABLED) ? 1 : 0;

 IPW_DEBUG_WX("GET Frag Threshold -> %d\n", wrqu->frag.value);

 return 0;
}
