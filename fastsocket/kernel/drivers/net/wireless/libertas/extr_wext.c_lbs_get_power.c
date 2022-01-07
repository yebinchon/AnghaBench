
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {scalar_t__ psmode; scalar_t__ connect_status; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int disabled; scalar_t__ flags; scalar_t__ value; } ;


 scalar_t__ LBS802_11POWERMODECAM ;
 int LBS_DEB_WEXT ;
 scalar_t__ LBS_DISCONNECTED ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;

__attribute__((used)) static int lbs_get_power(struct net_device *dev, struct iw_request_info *info,
     struct iw_param *vwrq, char *extra)
{
 struct lbs_private *priv = dev->ml_priv;

 lbs_deb_enter(LBS_DEB_WEXT);

 vwrq->value = 0;
 vwrq->flags = 0;
 vwrq->disabled = priv->psmode == LBS802_11POWERMODECAM
  || priv->connect_status == LBS_DISCONNECTED;

 lbs_deb_leave(LBS_DEB_WEXT);
 return 0;
}
