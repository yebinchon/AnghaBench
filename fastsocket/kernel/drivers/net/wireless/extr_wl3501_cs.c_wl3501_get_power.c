
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disabled; int flags; } ;
union iwreq_data {TYPE_1__ power; } ;
typedef int u8 ;
struct wl3501_card {int dummy; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
typedef int pwr_state ;


 int IW_POWER_ON ;
 int WL3501_MIB_ATTR_CURRENT_PWR_STATE ;
 struct wl3501_card* netdev_priv (struct net_device*) ;
 int wl3501_get_mib_value (struct wl3501_card*,int ,int *,int) ;

__attribute__((used)) static int wl3501_get_power(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *extra)
{
 u8 pwr_state;
 struct wl3501_card *this = netdev_priv(dev);
 int rc = wl3501_get_mib_value(this,
          WL3501_MIB_ATTR_CURRENT_PWR_STATE,
          &pwr_state, sizeof(pwr_state));
 if (rc)
  goto out;
 wrqu->power.disabled = !pwr_state;
 wrqu->power.flags = IW_POWER_ON;
out:
 return rc;
}
