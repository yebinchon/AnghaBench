
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union iwreq_data {int name; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int config; } ;


 int CFG_LONG_PREAMBLE ;
 int IFNAMSIZ ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int snprintf (int ,int ,char*) ;

__attribute__((used)) static int ipw2100_wx_get_preamble(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *extra)
{




 struct ipw2100_priv *priv = libipw_priv(dev);

 if (priv->config & CFG_LONG_PREAMBLE)
  snprintf(wrqu->name, IFNAMSIZ, "long (1)");
 else
  snprintf(wrqu->name, IFNAMSIZ, "auto (0)");

 return 0;
}
