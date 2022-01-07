
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int mesh_ssid_len; int mesh_ssid; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int length; } ;


 int LBS_DEB_WEXT ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int memcpy (char*,int ,int ) ;

__attribute__((used)) static int lbs_mesh_get_essid(struct net_device *dev,
         struct iw_request_info *info,
         struct iw_point *dwrq, char *extra)
{
 struct lbs_private *priv = dev->ml_priv;

 lbs_deb_enter(LBS_DEB_WEXT);

 memcpy(extra, priv->mesh_ssid, priv->mesh_ssid_len);

 dwrq->length = priv->mesh_ssid_len;

 dwrq->flags = 1;

 lbs_deb_leave(LBS_DEB_WEXT);
 return 0;
}
