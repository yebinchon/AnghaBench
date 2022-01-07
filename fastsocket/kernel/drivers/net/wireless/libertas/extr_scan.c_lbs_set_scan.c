
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int flags; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int scan_channel; scalar_t__ surpriseremoved; int scan_work; int work_thread; scalar_t__ scan_ssid_len; int scan_ssid; int radio_on; } ;
struct iw_scan_req {int essid; scalar_t__ essid_len; } ;
struct iw_request_info {int dummy; } ;


 int DECLARE_SSID_BUF (int ) ;
 int EINVAL ;
 int EIO ;
 int ENETDOWN ;
 int IW_SCAN_THIS_ESSID ;
 int LBS_DEB_WEXT ;
 int delayed_work_pending (int *) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_deb_wext (char*,int ) ;
 int memcpy (int ,int ,scalar_t__) ;
 int msecs_to_jiffies (int) ;
 int netif_running (struct net_device*) ;
 int print_ssid (int ,int ,scalar_t__) ;
 int queue_delayed_work (int ,int *,int ) ;
 int ssid ;

int lbs_set_scan(struct net_device *dev, struct iw_request_info *info,
   union iwreq_data *wrqu, char *extra)
{
 DECLARE_SSID_BUF(ssid);
 struct lbs_private *priv = dev->ml_priv;
 int ret = 0;

 lbs_deb_enter(LBS_DEB_WEXT);

 if (!priv->radio_on) {
  ret = -EINVAL;
  goto out;
 }

 if (!netif_running(dev)) {
  ret = -ENETDOWN;
  goto out;
 }
 if (wrqu->data.length == sizeof(struct iw_scan_req) &&
     wrqu->data.flags & IW_SCAN_THIS_ESSID) {
  struct iw_scan_req *req = (struct iw_scan_req *)extra;
  priv->scan_ssid_len = req->essid_len;
  memcpy(priv->scan_ssid, req->essid, priv->scan_ssid_len);
  lbs_deb_wext("set_scan, essid '%s'\n",
   print_ssid(ssid, priv->scan_ssid, priv->scan_ssid_len));
 } else {
  priv->scan_ssid_len = 0;
 }

 if (!delayed_work_pending(&priv->scan_work))
  queue_delayed_work(priv->work_thread, &priv->scan_work,
       msecs_to_jiffies(50));

 priv->scan_channel = -1;

 if (priv->surpriseremoved)
  ret = -EIO;

out:
 lbs_deb_leave_args(LBS_DEB_WEXT, "ret %d", ret);
 return ret;
}
