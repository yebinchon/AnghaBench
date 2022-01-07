
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_data; int sa_family; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct ipw2100_priv {int config; int status; int bssid; } ;


 int ARPHRD_ETHER ;
 int CFG_STATIC_BSSID ;
 int ETH_ALEN ;
 int IPW_DEBUG_WX (char*,int ) ;
 int STATUS_ASSOCIATED ;
 struct ipw2100_priv* libipw_priv (struct net_device*) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static int ipw2100_wx_get_wap(struct net_device *dev,
         struct iw_request_info *info,
         union iwreq_data *wrqu, char *extra)
{




 struct ipw2100_priv *priv = libipw_priv(dev);



 if (priv->config & CFG_STATIC_BSSID || priv->status & STATUS_ASSOCIATED) {
  wrqu->ap_addr.sa_family = ARPHRD_ETHER;
  memcpy(wrqu->ap_addr.sa_data, priv->bssid, ETH_ALEN);
 } else
  memset(wrqu->ap_addr.sa_data, 0, ETH_ALEN);

 IPW_DEBUG_WX("Getting WAP BSSID: %pM\n", wrqu->ap_addr.sa_data);
 return 0;
}
