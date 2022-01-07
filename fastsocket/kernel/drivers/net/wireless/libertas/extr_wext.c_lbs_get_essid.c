
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {struct lbs_private* ml_priv; } ;
struct TYPE_2__ {int ssid_len; int ssid; } ;
struct lbs_private {scalar_t__ connect_status; TYPE_1__ curbssparams; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int length; } ;


 scalar_t__ LBS_CONNECTED ;
 int LBS_DEB_WEXT ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int memcpy (char*,int ,int ) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static int lbs_get_essid(struct net_device *dev, struct iw_request_info *info,
     struct iw_point *dwrq, char *extra)
{
 struct lbs_private *priv = dev->ml_priv;

 lbs_deb_enter(LBS_DEB_WEXT);
 if (priv->connect_status == LBS_CONNECTED) {
  memcpy(extra, priv->curbssparams.ssid,
         priv->curbssparams.ssid_len);
 } else {
  memset(extra, 0, 32);
 }




 dwrq->length = priv->curbssparams.ssid_len;

 dwrq->flags = 1;

 lbs_deb_leave(LBS_DEB_WEXT);
 return 0;
}
