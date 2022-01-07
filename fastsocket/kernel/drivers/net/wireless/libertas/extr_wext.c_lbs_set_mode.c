
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int lock; } ;
struct iw_request_info {int dummy; } ;
struct assoc_request {int flags; scalar_t__ mode; } ;


 int ASSOC_FLAG_MODE ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IW_MODE_ADHOC ;
 scalar_t__ IW_MODE_AUTO ;
 scalar_t__ IW_MODE_INFRA ;
 int LBS_DEB_WEXT ;
 int lbs_cancel_association_work (struct lbs_private*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave_args (int ,char*,int) ;
 int lbs_deb_wext (char*,scalar_t__) ;
 struct assoc_request* lbs_get_association_request (struct lbs_private*) ;
 int lbs_postpone_association_work (struct lbs_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int lbs_set_mode(struct net_device *dev,
    struct iw_request_info *info, u32 * uwrq, char *extra)
{
 int ret = 0;
 struct lbs_private *priv = dev->ml_priv;
 struct assoc_request * assoc_req;

 lbs_deb_enter(LBS_DEB_WEXT);

 if ( (*uwrq != IW_MODE_ADHOC)
     && (*uwrq != IW_MODE_INFRA)
     && (*uwrq != IW_MODE_AUTO)) {
  lbs_deb_wext("Invalid mode: 0x%x\n", *uwrq);
  ret = -EINVAL;
  goto out;
 }

 mutex_lock(&priv->lock);
 assoc_req = lbs_get_association_request(priv);
 if (!assoc_req) {
  ret = -ENOMEM;
  lbs_cancel_association_work(priv);
 } else {
  assoc_req->mode = *uwrq;
  set_bit(ASSOC_FLAG_MODE, &assoc_req->flags);
  lbs_postpone_association_work(priv);
  lbs_deb_wext("Switching to mode: 0x%x\n", *uwrq);
 }
 mutex_unlock(&priv->lock);

out:
 lbs_deb_leave_args(LBS_DEB_WEXT, "ret %d", ret);
 return ret;
}
