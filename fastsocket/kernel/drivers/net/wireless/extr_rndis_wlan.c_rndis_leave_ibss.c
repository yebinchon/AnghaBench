
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiphy {int dummy; } ;
struct usbnet {int net; } ;
struct rndis_wlan_private {int connected; int bssid; struct usbnet* usbdev; } ;
struct net_device {int dummy; } ;


 int ETH_ALEN ;
 int deauthenticate (struct usbnet*) ;
 int memset (int ,int ,int ) ;
 int netdev_dbg (int ,char*) ;
 struct rndis_wlan_private* wiphy_priv (struct wiphy*) ;

__attribute__((used)) static int rndis_leave_ibss(struct wiphy *wiphy, struct net_device *dev)
{
 struct rndis_wlan_private *priv = wiphy_priv(wiphy);
 struct usbnet *usbdev = priv->usbdev;

 netdev_dbg(usbdev->net, "cfg80211.leave_ibss()\n");

 priv->connected = 0;
 memset(priv->bssid, 0, ETH_ALEN);

 return deauthenticate(usbdev);
}
