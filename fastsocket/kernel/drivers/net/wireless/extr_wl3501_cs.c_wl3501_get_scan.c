
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_18__ {int length; scalar_t__ flags; } ;
union iwreq_data {TYPE_9__ data; } ;
struct wl3501_card {int bss_cnt; TYPE_6__* bss_set; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_16__ {int flags; scalar_t__ length; } ;
struct TYPE_14__ {scalar_t__ e; int m; } ;
struct TYPE_10__ {int sa_data; int sa_family; } ;
struct TYPE_17__ {TYPE_7__ data; TYPE_5__ freq; int mode; TYPE_1__ ap_addr; } ;
struct iw_event {TYPE_8__ u; int cmd; } ;
struct TYPE_13__ {int chan; } ;
struct TYPE_11__ {scalar_t__ len; } ;
struct TYPE_12__ {int * essid; TYPE_2__ el; } ;
struct TYPE_15__ {int cap_info; TYPE_4__ ds_pset; int bss_type; TYPE_3__ ssid; int bssid; } ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_ENABLED ;
 int IW_ENCODE_NOKEY ;
 int IW_EV_ADDR_LEN ;
 int IW_EV_FREQ_LEN ;
 int IW_EV_UINT_LEN ;
 int IW_SCAN_MAX_DATA ;
 int SIOCGIWAP ;
 int SIOCGIWENCODE ;
 int SIOCGIWESSID ;
 int SIOCGIWFREQ ;
 int SIOCGIWMODE ;
 int WL3501_MGMT_CAPABILITY_PRIVACY ;
 char* iwe_stream_add_event (struct iw_request_info*,char*,char*,struct iw_event*,int ) ;
 char* iwe_stream_add_point (struct iw_request_info*,char*,char*,struct iw_event*,int *) ;
 int memcpy (int ,int ,int ) ;
 struct wl3501_card* netdev_priv (struct net_device*) ;

__attribute__((used)) static int wl3501_get_scan(struct net_device *dev, struct iw_request_info *info,
      union iwreq_data *wrqu, char *extra)
{
 struct wl3501_card *this = netdev_priv(dev);
 int i;
 char *current_ev = extra;
 struct iw_event iwe;

 for (i = 0; i < this->bss_cnt; ++i) {
  iwe.cmd = SIOCGIWAP;
  iwe.u.ap_addr.sa_family = ARPHRD_ETHER;
  memcpy(iwe.u.ap_addr.sa_data, this->bss_set[i].bssid, ETH_ALEN);
  current_ev = iwe_stream_add_event(info, current_ev,
        extra + IW_SCAN_MAX_DATA,
        &iwe, IW_EV_ADDR_LEN);
  iwe.cmd = SIOCGIWESSID;
  iwe.u.data.flags = 1;
  iwe.u.data.length = this->bss_set[i].ssid.el.len;
  current_ev = iwe_stream_add_point(info, current_ev,
        extra + IW_SCAN_MAX_DATA,
        &iwe,
        this->bss_set[i].ssid.essid);
  iwe.cmd = SIOCGIWMODE;
  iwe.u.mode = this->bss_set[i].bss_type;
  current_ev = iwe_stream_add_event(info, current_ev,
        extra + IW_SCAN_MAX_DATA,
        &iwe, IW_EV_UINT_LEN);
  iwe.cmd = SIOCGIWFREQ;
  iwe.u.freq.m = this->bss_set[i].ds_pset.chan;
  iwe.u.freq.e = 0;
  current_ev = iwe_stream_add_event(info, current_ev,
        extra + IW_SCAN_MAX_DATA,
        &iwe, IW_EV_FREQ_LEN);
  iwe.cmd = SIOCGIWENCODE;
  if (this->bss_set[i].cap_info & WL3501_MGMT_CAPABILITY_PRIVACY)
   iwe.u.data.flags = IW_ENCODE_ENABLED | IW_ENCODE_NOKEY;
  else
   iwe.u.data.flags = IW_ENCODE_DISABLED;
  iwe.u.data.length = 0;
  current_ev = iwe_stream_add_point(info, current_ev,
        extra + IW_SCAN_MAX_DATA,
        &iwe, ((void*)0));
 }

 wrqu->data.length = (current_ev - extra);
 wrqu->data.flags = 0;
 return 0;
}
