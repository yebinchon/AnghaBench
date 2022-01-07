
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int IW_MODE_REPEAT ;
 int LBS_DEB_WEXT ;
 int lbs_deb_enter (int ) ;
 int lbs_deb_leave (int ) ;

__attribute__((used)) static int mesh_wlan_get_mode(struct net_device *dev,
                struct iw_request_info *info, u32 * uwrq,
         char *extra)
{
 lbs_deb_enter(LBS_DEB_WEXT);

 *uwrq = IW_MODE_REPEAT;

 lbs_deb_leave(LBS_DEB_WEXT);
 return 0;
}
