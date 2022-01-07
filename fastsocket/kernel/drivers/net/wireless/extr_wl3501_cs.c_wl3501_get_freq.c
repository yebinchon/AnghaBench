
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m; int e; } ;
union iwreq_data {TYPE_1__ freq; } ;
struct wl3501_card {int chan; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int ieee80211_dsss_chan_to_freq (int ) ;
 struct wl3501_card* netdev_priv (struct net_device*) ;

__attribute__((used)) static int wl3501_get_freq(struct net_device *dev, struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 struct wl3501_card *this = netdev_priv(dev);

 wrqu->freq.m = ieee80211_dsss_chan_to_freq(this->chan) * 100000;
 wrqu->freq.e = 1;
 return 0;
}
