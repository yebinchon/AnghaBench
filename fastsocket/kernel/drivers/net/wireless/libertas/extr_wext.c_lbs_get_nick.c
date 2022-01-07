
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {int nodename; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {size_t length; int flags; } ;


 int LBS_DEB_WEXT ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int memcpy (char*,int ,size_t) ;
 size_t strlen (int ) ;

__attribute__((used)) static int lbs_get_nick(struct net_device *dev, struct iw_request_info *info,
    struct iw_point *dwrq, char *extra)
{
 struct lbs_private *priv = dev->ml_priv;

 lbs_deb_enter(LBS_DEB_WEXT);

 dwrq->length = strlen(priv->nodename);
 memcpy(extra, priv->nodename, dwrq->length);
 extra[dwrq->length] = '\0';

 dwrq->flags = 1;

 lbs_deb_leave(LBS_DEB_WEXT);
 return 0;
}
