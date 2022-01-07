
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int lock; int radio_on; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; int flags; } ;
struct assoc_request {int ssid_len; int flags; int ssid; } ;
typedef int ssid ;


 int ASSOC_FLAG_SSID ;
 int DECLARE_SSID_BUF (int ) ;
 int E2BIG ;
 int EINVAL ;
 int ENOMEM ;
 int IW_ESSID_MAX_SIZE ;
 int LBS_DEB_WEXT ;
 int lbs_cancel_association_work (struct lbs_private*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_deb_wext (char*,...) ;
 struct assoc_request* lbs_get_association_request (struct lbs_private*) ;
 int lbs_postpone_association_work (struct lbs_private*) ;
 int memcpy (int**,...) ;
 int memset (int**,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int print_ssid (int ,int*,int) ;
 int set_bit (int ,int *) ;
 int ssid_buf ;

__attribute__((used)) static int lbs_set_essid(struct net_device *dev, struct iw_request_info *info,
     struct iw_point *dwrq, char *extra)
{
 struct lbs_private *priv = dev->ml_priv;
 int ret = 0;
 u8 ssid[IW_ESSID_MAX_SIZE];
 u8 ssid_len = 0;
 struct assoc_request * assoc_req;
 int in_ssid_len = dwrq->length;
 DECLARE_SSID_BUF(ssid_buf);

 lbs_deb_enter(LBS_DEB_WEXT);

 if (!priv->radio_on) {
  ret = -EINVAL;
  goto out;
 }


 if (in_ssid_len > IW_ESSID_MAX_SIZE) {
  ret = -E2BIG;
  goto out;
 }

 memset(&ssid, 0, sizeof(ssid));

 if (!dwrq->flags || !in_ssid_len) {

 } else {

  memcpy(&ssid, extra, in_ssid_len);
  ssid_len = in_ssid_len;
 }

 if (!ssid_len) {
  lbs_deb_wext("requested any SSID\n");
 } else {
  lbs_deb_wext("requested SSID '%s'\n",
               print_ssid(ssid_buf, ssid, ssid_len));
 }

out:
 mutex_lock(&priv->lock);
 if (ret == 0) {

  assoc_req = lbs_get_association_request(priv);
  if (!assoc_req) {
   ret = -ENOMEM;
  } else {

   memcpy(&assoc_req->ssid, &ssid, IW_ESSID_MAX_SIZE);
   assoc_req->ssid_len = ssid_len;
   set_bit(ASSOC_FLAG_SSID, &assoc_req->flags);
   lbs_postpone_association_work(priv);
  }
 }


 if (ret != 0) {
  lbs_cancel_association_work(priv);
 }

 mutex_unlock(&priv->lock);

 lbs_deb_leave_args(LBS_DEB_WEXT, "ret %d", ret);
 return ret;
}
