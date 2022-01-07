
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disabled; int fixed; int value; } ;
union iwreq_data {TYPE_1__ sens; } ;
struct wl3501_card {int rssi; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 struct wl3501_card* netdev_priv (struct net_device*) ;

__attribute__((used)) static int wl3501_get_sens(struct net_device *dev, struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 struct wl3501_card *this = netdev_priv(dev);

 wrqu->sens.value = this->rssi;
 wrqu->sens.disabled = !wrqu->sens.value;
 wrqu->sens.fixed = 1;
 return 0;
}
