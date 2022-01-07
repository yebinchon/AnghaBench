
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int IFNAMSIZ ;
 int LBS_DEB_WEXT ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;
 int snprintf (char*,int ,char*) ;

__attribute__((used)) static int lbs_get_name(struct net_device *dev, struct iw_request_info *info,
    char *cwrq, char *extra)
{

 lbs_deb_enter(LBS_DEB_WEXT);


 snprintf(cwrq, IFNAMSIZ, "IEEE 802.11b/g");

 lbs_deb_leave(LBS_DEB_WEXT);
 return 0;
}
