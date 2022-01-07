
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union iwreq_data {int mode; } ;
struct wl3501_card {int net_type; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 struct wl3501_card* netdev_priv (struct net_device*) ;

__attribute__((used)) static int wl3501_get_mode(struct net_device *dev, struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 struct wl3501_card *this = netdev_priv(dev);

 wrqu->mode = this->net_type;
 return 0;
}
