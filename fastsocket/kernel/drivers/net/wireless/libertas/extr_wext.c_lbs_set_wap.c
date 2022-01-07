
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; int sa_data; } ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int lock; int radio_on; } ;
struct iw_request_info {int dummy; } ;
struct assoc_request {int flags; int bssid; } ;


 scalar_t__ ARPHRD_ETHER ;
 int ASSOC_FLAG_BSSID ;
 int EINVAL ;
 int ENOMEM ;
 int ETH_ALEN ;
 int LBS_DEB_WEXT ;
 int lbs_cancel_association_work (struct lbs_private*) ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_wext (char*,int ) ;
 struct assoc_request* lbs_get_association_request (struct lbs_private*) ;
 int lbs_postpone_association_work (struct lbs_private*) ;
 int memcpy (int *,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int lbs_set_wap(struct net_device *dev, struct iw_request_info *info,
   struct sockaddr *awrq, char *extra)
{
 struct lbs_private *priv = dev->ml_priv;
 struct assoc_request * assoc_req;
 int ret = 0;

 lbs_deb_enter(LBS_DEB_WEXT);

 if (!priv->radio_on)
  return -EINVAL;

 if (awrq->sa_family != ARPHRD_ETHER)
  return -EINVAL;

 lbs_deb_wext("ASSOC: WAP: sa_data %pM\n", awrq->sa_data);

 mutex_lock(&priv->lock);


 assoc_req = lbs_get_association_request(priv);
 if (!assoc_req) {
  lbs_cancel_association_work(priv);
  ret = -ENOMEM;
 } else {

  memcpy(&assoc_req->bssid, awrq->sa_data, ETH_ALEN);
  set_bit(ASSOC_FLAG_BSSID, &assoc_req->flags);
  lbs_postpone_association_work(priv);
 }

 mutex_unlock(&priv->lock);

 return ret;
}
