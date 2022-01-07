
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int lock; int nodename; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; } ;


 int E2BIG ;
 int LBS_DEB_WEXT ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int memcpy (int ,char*,int) ;
 int memset (int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int lbs_set_nick(struct net_device *dev, struct iw_request_info *info,
    struct iw_point *dwrq, char *extra)
{
 struct lbs_private *priv = dev->ml_priv;

 lbs_deb_enter(LBS_DEB_WEXT);





 if (dwrq->length > 16) {
  return -E2BIG;
 }

 mutex_lock(&priv->lock);
 memset(priv->nodename, 0, sizeof(priv->nodename));
 memcpy(priv->nodename, extra, dwrq->length);
 mutex_unlock(&priv->lock);

 lbs_deb_leave(LBS_DEB_WEXT);
 return 0;
}
