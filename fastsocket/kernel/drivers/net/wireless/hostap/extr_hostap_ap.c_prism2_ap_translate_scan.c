
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_14__ {char* ssid; int channel; int ssid_len; } ;
struct TYPE_15__ {TYPE_6__ ap; } ;
struct sta_info {int last_rx_silence; int last_rx_signal; int capability; int listen_interval; int last_rx_updated; TYPE_7__ u; scalar_t__ ap; int addr; } ;
struct net_device {int dummy; } ;
struct list_head {struct list_head* next; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_11__ {int flags; int length; } ;
struct TYPE_12__ {int m; int e; } ;
struct TYPE_10__ {int qual; int updated; void* noise; void* level; } ;
struct TYPE_9__ {int sa_data; int sa_family; } ;
struct TYPE_13__ {TYPE_3__ data; TYPE_4__ freq; TYPE_2__ qual; int mode; TYPE_1__ ap_addr; } ;
struct iw_event {TYPE_5__ u; int cmd; void* len; } ;
struct hostap_interface {TYPE_8__* local; } ;
struct ap_data {int sta_table_lock; struct list_head sta_list; } ;
struct TYPE_16__ {struct ap_data* ap; } ;
typedef TYPE_8__ local_info_t ;
typedef int iwe ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 int FREQ_COUNT ;
 void* HFA384X_LEVEL_TO_dBm (int) ;
 int IWEVCUSTOM ;
 int IWEVQUAL ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_ENABLED ;
 int IW_ENCODE_NOKEY ;
 void* IW_EV_ADDR_LEN ;
 void* IW_EV_FREQ_LEN ;
 void* IW_EV_QUAL_LEN ;
 void* IW_EV_UINT_LEN ;
 int IW_MODE_INFRA ;
 int IW_MODE_MASTER ;
 int IW_QUAL_DBM ;
 int IW_SCAN_MAX_DATA ;
 int SIOCGIWAP ;
 int SIOCGIWENCODE ;
 int SIOCGIWESSID ;
 int SIOCGIWFREQ ;
 int SIOCGIWMODE ;
 int WLAN_CAPABILITY_PRIVACY ;
 int* freq_list ;
 char* iwe_stream_add_event (struct iw_request_info*,char*,char*,struct iw_event*,void*) ;
 char* iwe_stream_add_point (struct iw_request_info*,char*,char*,struct iw_event*,char*) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct iw_event*,int ,int) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int sprintf (char*,char*,int) ;
 int strlen (char*) ;

int prism2_ap_translate_scan(struct net_device *dev,
        struct iw_request_info *info, char *buffer)
{
 struct hostap_interface *iface;
 local_info_t *local;
 struct ap_data *ap;
 struct list_head *ptr;
 struct iw_event iwe;
 char *current_ev = buffer;
 char *end_buf = buffer + IW_SCAN_MAX_DATA;

 char buf[64];


 iface = netdev_priv(dev);
 local = iface->local;
 ap = local->ap;

 spin_lock_bh(&ap->sta_table_lock);

 for (ptr = ap->sta_list.next; ptr != ((void*)0) && ptr != &ap->sta_list;
      ptr = ptr->next) {
  struct sta_info *sta = (struct sta_info *) ptr;


  memset(&iwe, 0, sizeof(iwe));
  iwe.cmd = SIOCGIWAP;
  iwe.u.ap_addr.sa_family = ARPHRD_ETHER;
  memcpy(iwe.u.ap_addr.sa_data, sta->addr, ETH_ALEN);
  iwe.len = IW_EV_ADDR_LEN;
  current_ev = iwe_stream_add_event(info, current_ev, end_buf,
        &iwe, IW_EV_ADDR_LEN);



  memset(&iwe, 0, sizeof(iwe));
  iwe.cmd = SIOCGIWMODE;
  if (sta->ap)
   iwe.u.mode = IW_MODE_MASTER;
  else
   iwe.u.mode = IW_MODE_INFRA;
  iwe.len = IW_EV_UINT_LEN;
  current_ev = iwe_stream_add_event(info, current_ev, end_buf,
        &iwe, IW_EV_UINT_LEN);


  memset(&iwe, 0, sizeof(iwe));
  iwe.cmd = IWEVQUAL;
  if (sta->last_rx_silence == 0)
   iwe.u.qual.qual = sta->last_rx_signal < 27 ?
    0 : (sta->last_rx_signal - 27) * 92 / 127;
  else
   iwe.u.qual.qual = sta->last_rx_signal -
    sta->last_rx_silence - 35;
  iwe.u.qual.level = HFA384X_LEVEL_TO_dBm(sta->last_rx_signal);
  iwe.u.qual.noise = HFA384X_LEVEL_TO_dBm(sta->last_rx_silence);
  iwe.u.qual.updated = sta->last_rx_updated;
  iwe.len = IW_EV_QUAL_LEN;
  current_ev = iwe_stream_add_event(info, current_ev, end_buf,
        &iwe, IW_EV_QUAL_LEN);


  if (sta->ap) {
   memset(&iwe, 0, sizeof(iwe));
   iwe.cmd = SIOCGIWESSID;
   iwe.u.data.length = sta->u.ap.ssid_len;
   iwe.u.data.flags = 1;
   current_ev = iwe_stream_add_point(info, current_ev,
         end_buf, &iwe,
         sta->u.ap.ssid);

   memset(&iwe, 0, sizeof(iwe));
   iwe.cmd = SIOCGIWENCODE;
   if (sta->capability & WLAN_CAPABILITY_PRIVACY)
    iwe.u.data.flags =
     IW_ENCODE_ENABLED | IW_ENCODE_NOKEY;
   else
    iwe.u.data.flags = IW_ENCODE_DISABLED;
   current_ev = iwe_stream_add_point(info, current_ev,
         end_buf, &iwe,
         sta->u.ap.ssid);

   if (sta->u.ap.channel > 0 &&
       sta->u.ap.channel <= FREQ_COUNT) {
    memset(&iwe, 0, sizeof(iwe));
    iwe.cmd = SIOCGIWFREQ;
    iwe.u.freq.m = freq_list[sta->u.ap.channel - 1]
     * 100000;
    iwe.u.freq.e = 1;
    current_ev = iwe_stream_add_event(
     info, current_ev, end_buf, &iwe,
     IW_EV_FREQ_LEN);
   }

   memset(&iwe, 0, sizeof(iwe));
   iwe.cmd = IWEVCUSTOM;
   sprintf(buf, "beacon_interval=%d",
    sta->listen_interval);
   iwe.u.data.length = strlen(buf);
   current_ev = iwe_stream_add_point(info, current_ev,
         end_buf, &iwe, buf);
  }


  sta->last_rx_updated = IW_QUAL_DBM;


 }

 spin_unlock_bh(&ap->sta_table_lock);

 return current_ev - buffer;
}
