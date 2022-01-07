
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wiphy {int dummy; } ;
struct usbnet {int dummy; } ;
struct station_info {int dummy; } ;
struct rndis_wlan_private {int bssid; struct usbnet* usbdev; } ;
struct net_device {int dummy; } ;


 int ENOENT ;
 scalar_t__ compare_ether_addr (int ,int *) ;
 int rndis_fill_station_info (struct usbnet*,struct station_info*) ;
 struct rndis_wlan_private* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int rndis_get_station(struct wiphy *wiphy, struct net_device *dev,
     u8 *mac, struct station_info *sinfo)
{
 struct rndis_wlan_private *priv = wiphy_priv(wiphy);
 struct usbnet *usbdev = priv->usbdev;

 if (compare_ether_addr(priv->bssid, mac))
  return -ENOENT;

 rndis_fill_station_info(usbdev, sinfo);

 return 0;
}
