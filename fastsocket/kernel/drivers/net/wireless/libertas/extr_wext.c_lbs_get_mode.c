
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int mode; } ;
struct iw_request_info {int dummy; } ;


 int LBS_DEB_WEXT ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;

__attribute__((used)) static int lbs_get_mode(struct net_device *dev,
    struct iw_request_info *info, u32 * uwrq, char *extra)
{
 struct lbs_private *priv = dev->ml_priv;

 lbs_deb_enter(LBS_DEB_WEXT);

 *uwrq = priv->mode;

 lbs_deb_leave(LBS_DEB_WEXT);
 return 0;
}
