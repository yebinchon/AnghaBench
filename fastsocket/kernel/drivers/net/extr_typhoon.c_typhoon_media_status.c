
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resp_desc {int parm1; } ;
struct net_device {int dummy; } ;


 int TYPHOON_MEDIA_STAT_NO_LINK ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;

__attribute__((used)) static inline void
typhoon_media_status(struct net_device *dev, struct resp_desc *resp)
{
 if(resp->parm1 & TYPHOON_MEDIA_STAT_NO_LINK)
  netif_carrier_off(dev);
 else
  netif_carrier_on(dev);
}
