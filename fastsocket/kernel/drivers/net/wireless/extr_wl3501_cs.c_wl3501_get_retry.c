
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; scalar_t__ disabled; int value; } ;
union iwreq_data {TYPE_1__ retry; } ;
typedef int u8 ;
struct wl3501_card {int dummy; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
typedef int retry ;


 int IW_RETRY_LIMIT ;
 int IW_RETRY_LONG ;
 int IW_RETRY_SHORT ;
 int WL3501_MIB_ATTR_LONG_RETRY_LIMIT ;
 int WL3501_MIB_ATTR_SHORT_RETRY_LIMIT ;
 struct wl3501_card* netdev_priv (struct net_device*) ;
 int wl3501_get_mib_value (struct wl3501_card*,int ,int *,int) ;

__attribute__((used)) static int wl3501_get_retry(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *extra)
{
 u8 retry;
 struct wl3501_card *this = netdev_priv(dev);
 int rc = wl3501_get_mib_value(this,
          WL3501_MIB_ATTR_LONG_RETRY_LIMIT,
          &retry, sizeof(retry));
 if (rc)
  goto out;
 if (wrqu->retry.flags & IW_RETRY_LONG) {
  wrqu->retry.flags = IW_RETRY_LIMIT | IW_RETRY_LONG;
  goto set_value;
 }
 rc = wl3501_get_mib_value(this, WL3501_MIB_ATTR_SHORT_RETRY_LIMIT,
      &retry, sizeof(retry));
 if (rc)
  goto out;
 wrqu->retry.flags = IW_RETRY_LIMIT | IW_RETRY_SHORT;
set_value:
 wrqu->retry.value = retry;
 wrqu->retry.disabled = 0;
out:
 return rc;
}
