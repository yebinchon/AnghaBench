
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_data; int sa_family; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct ipw_priv {int status; int net_dev; int bssid; } ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 int SIOCGIWAP ;
 int STATUS_ASSOCIATED ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;
 int wireless_send_event (int ,int ,union iwreq_data*,int *) ;

__attribute__((used)) static void notify_wx_assoc_event(struct ipw_priv *priv)
{
 union iwreq_data wrqu;
 wrqu.ap_addr.sa_family = ARPHRD_ETHER;
 if (priv->status & STATUS_ASSOCIATED)
  memcpy(wrqu.ap_addr.sa_data, priv->bssid, ETH_ALEN);
 else
  memset(wrqu.ap_addr.sa_data, 0, ETH_ALEN);
 wireless_send_event(priv->net_dev, SIOCGIWAP, &wrqu, ((void*)0));
}
