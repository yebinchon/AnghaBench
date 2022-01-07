
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union iwreq_data {int name; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int status; } ;


 int IFNAMSIZ ;
 int IPW_DEBUG_WX (char*,int ) ;
 int STATUS_ASSOCIATED ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int snprintf (int ,int ,char*) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int ipw2100_wx_get_name(struct net_device *dev,
          struct iw_request_info *info,
          union iwreq_data *wrqu, char *extra)
{




 struct ipw2100_priv *priv = libipw_priv(dev);
 if (!(priv->status & STATUS_ASSOCIATED))
  strcpy(wrqu->name, "unassociated");
 else
  snprintf(wrqu->name, IFNAMSIZ, "IEEE 802.11b");

 IPW_DEBUG_WX("Name: %s\n", wrqu->name);
 return 0;
}
