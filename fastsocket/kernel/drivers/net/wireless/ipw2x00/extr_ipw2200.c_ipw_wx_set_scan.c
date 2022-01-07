
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; int flags; } ;
union iwreq_data {TYPE_1__ data; } ;
struct net_device {int dummy; } ;
struct iw_scan_req {scalar_t__ scan_type; int essid; scalar_t__ essid_len; } ;
struct iw_request_info {int dummy; } ;
struct delayed_work {int dummy; } ;
struct ipw_priv {int user_requested_scan; int direct_scan_ssid_len; int mutex; struct delayed_work request_scan; struct delayed_work request_passive_scan; struct delayed_work request_direct_scan; int direct_scan_ssid; } ;


 int IPW_DEBUG_WX (char*) ;
 int IW_SCAN_THIS_ESSID ;
 scalar_t__ IW_SCAN_TYPE_PASSIVE ;
 struct ipw_priv* libipw_priv (struct net_device*) ;
 int memcpy (int ,int ,int) ;
 int min (int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_delayed_work (struct delayed_work*,int ) ;

__attribute__((used)) static int ipw_wx_set_scan(struct net_device *dev,
      struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 struct ipw_priv *priv = libipw_priv(dev);
 struct iw_scan_req *req = (struct iw_scan_req *)extra;
 struct delayed_work *work = ((void*)0);

 mutex_lock(&priv->mutex);

 priv->user_requested_scan = 1;

 if (wrqu->data.length == sizeof(struct iw_scan_req)) {
  if (wrqu->data.flags & IW_SCAN_THIS_ESSID) {
   int len = min((int)req->essid_len,
                 (int)sizeof(priv->direct_scan_ssid));
   memcpy(priv->direct_scan_ssid, req->essid, len);
   priv->direct_scan_ssid_len = len;
   work = &priv->request_direct_scan;
  } else if (req->scan_type == IW_SCAN_TYPE_PASSIVE) {
   work = &priv->request_passive_scan;
  }
 } else {

  work = &priv->request_scan;
 }

 mutex_unlock(&priv->mutex);

 IPW_DEBUG_WX("Start scan\n");

 schedule_delayed_work(work, 0);

 return 0;
}
