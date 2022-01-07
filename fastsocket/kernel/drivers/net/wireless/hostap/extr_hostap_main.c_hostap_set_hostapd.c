
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int hostapd; } ;
typedef TYPE_1__ local_info_t ;


 int EINVAL ;
 int hostap_disable_hostapd (TYPE_1__*,int) ;
 int hostap_enable_hostapd (TYPE_1__*,int) ;

int hostap_set_hostapd(local_info_t *local, int val, int rtnl_locked)
{
 int ret;

 if (val < 0 || val > 1)
  return -EINVAL;

 if (local->hostapd == val)
  return 0;

 if (val) {
  ret = hostap_enable_hostapd(local, rtnl_locked);
  if (ret == 0)
   local->hostapd = 1;
 } else {
  local->hostapd = 0;
  ret = hostap_disable_hostapd(local, rtnl_locked);
  if (ret != 0)
   local->hostapd = 1;
 }

 return ret;
}
