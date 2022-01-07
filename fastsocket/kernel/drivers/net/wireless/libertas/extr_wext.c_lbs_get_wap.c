
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_family; int sa_data; } ;
struct net_device {struct lbs_private* ml_priv; } ;
struct TYPE_2__ {int bssid; } ;
struct lbs_private {scalar_t__ connect_status; TYPE_1__ curbssparams; } ;
struct iw_request_info {int dummy; } ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 scalar_t__ LBS_CONNECTED ;
 int LBS_DEB_WEXT ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static int lbs_get_wap(struct net_device *dev, struct iw_request_info *info,
   struct sockaddr *awrq, char *extra)
{
 struct lbs_private *priv = dev->ml_priv;

 lbs_deb_enter(LBS_DEB_WEXT);

 if (priv->connect_status == LBS_CONNECTED) {
  memcpy(awrq->sa_data, priv->curbssparams.bssid, ETH_ALEN);
 } else {
  memset(awrq->sa_data, 0, ETH_ALEN);
 }
 awrq->sa_family = ARPHRD_ETHER;

 lbs_deb_leave(LBS_DEB_WEXT);
 return 0;
}
