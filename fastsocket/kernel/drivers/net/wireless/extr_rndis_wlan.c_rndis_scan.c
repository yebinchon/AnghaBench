
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct usbnet {int net; } ;
struct rndis_wlan_private {scalar_t__ device_type; int scan_work; int workqueue; struct cfg80211_scan_request* scan_request; } ;
struct net_device {int dummy; } ;
struct cfg80211_scan_request {TYPE_1__* wdev; } ;
struct TYPE_2__ {struct net_device* netdev; } ;


 int EBUSY ;
 int EINVAL ;
 int HZ ;
 scalar_t__ RNDIS_BCM4320A ;
 int SCAN_DELAY_JIFFIES ;
 struct rndis_wlan_private* get_rndis_wlan_priv (struct usbnet*) ;
 int netdev_dbg (int ,char*) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int queue_delayed_work (int ,int *,int) ;
 int rndis_check_bssid_list (struct usbnet*,int *,int *) ;
 int rndis_start_bssid_list_scan (struct usbnet*) ;

__attribute__((used)) static int rndis_scan(struct wiphy *wiphy,
   struct cfg80211_scan_request *request)
{
 struct net_device *dev = request->wdev->netdev;
 struct usbnet *usbdev = netdev_priv(dev);
 struct rndis_wlan_private *priv = get_rndis_wlan_priv(usbdev);
 int ret;
 int delay = SCAN_DELAY_JIFFIES;

 netdev_dbg(usbdev->net, "cfg80211.scan\n");




 rndis_check_bssid_list(usbdev, ((void*)0), ((void*)0));

 if (!request)
  return -EINVAL;

 if (priv->scan_request && priv->scan_request != request)
  return -EBUSY;

 priv->scan_request = request;

 ret = rndis_start_bssid_list_scan(usbdev);
 if (ret == 0) {
  if (priv->device_type == RNDIS_BCM4320A)
   delay = HZ;


  queue_delayed_work(priv->workqueue, &priv->scan_work, delay);
 }

 return ret;
}
