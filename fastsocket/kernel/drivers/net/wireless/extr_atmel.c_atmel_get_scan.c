
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; scalar_t__ flags; } ;
struct TYPE_11__ {int length; int flags; } ;
struct TYPE_9__ {int level; int qual; } ;
struct TYPE_8__ {scalar_t__ e; int m; } ;
struct TYPE_7__ {int sa_data; int sa_family; } ;
struct TYPE_12__ {TYPE_5__ data; TYPE_3__ qual; TYPE_2__ freq; int mode; TYPE_1__ ap_addr; } ;
struct iw_event {TYPE_6__ u; int cmd; } ;
struct atmel_private {scalar_t__ site_survey_state; int BSS_list_entries; TYPE_4__* BSSinfo; } ;
struct TYPE_10__ {int SSIDsize; scalar_t__ UsingWEP; int RSSI; int channel; int BSStype; int * SSID; int BSSID; } ;


 int ARPHRD_ETHER ;
 int EAGAIN ;
 int IWEVQUAL ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_ENABLED ;
 int IW_ENCODE_NOKEY ;
 int IW_EV_ADDR_LEN ;
 int IW_EV_FREQ_LEN ;
 int IW_EV_QUAL_LEN ;
 int IW_EV_UINT_LEN ;
 int IW_SCAN_MAX_DATA ;
 int SIOCGIWAP ;
 int SIOCGIWENCODE ;
 int SIOCGIWESSID ;
 int SIOCGIWFREQ ;
 int SIOCGIWMODE ;
 scalar_t__ SITE_SURVEY_COMPLETED ;
 char* iwe_stream_add_event (struct iw_request_info*,char*,char*,struct iw_event*,int ) ;
 char* iwe_stream_add_point (struct iw_request_info*,char*,char*,struct iw_event*,int *) ;
 int memcpy (int ,int ,int) ;
 struct atmel_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int atmel_get_scan(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_point *dwrq,
     char *extra)
{
 struct atmel_private *priv = netdev_priv(dev);
 int i;
 char *current_ev = extra;
 struct iw_event iwe;

 if (priv->site_survey_state != SITE_SURVEY_COMPLETED)
  return -EAGAIN;

 for (i = 0; i < priv->BSS_list_entries; i++) {
  iwe.cmd = SIOCGIWAP;
  iwe.u.ap_addr.sa_family = ARPHRD_ETHER;
  memcpy(iwe.u.ap_addr.sa_data, priv->BSSinfo[i].BSSID, 6);
  current_ev = iwe_stream_add_event(info, current_ev,
        extra + IW_SCAN_MAX_DATA,
        &iwe, IW_EV_ADDR_LEN);

  iwe.u.data.length = priv->BSSinfo[i].SSIDsize;
  if (iwe.u.data.length > 32)
   iwe.u.data.length = 32;
  iwe.cmd = SIOCGIWESSID;
  iwe.u.data.flags = 1;
  current_ev = iwe_stream_add_point(info, current_ev,
        extra + IW_SCAN_MAX_DATA,
        &iwe, priv->BSSinfo[i].SSID);

  iwe.cmd = SIOCGIWMODE;
  iwe.u.mode = priv->BSSinfo[i].BSStype;
  current_ev = iwe_stream_add_event(info, current_ev,
        extra + IW_SCAN_MAX_DATA,
        &iwe, IW_EV_UINT_LEN);

  iwe.cmd = SIOCGIWFREQ;
  iwe.u.freq.m = priv->BSSinfo[i].channel;
  iwe.u.freq.e = 0;
  current_ev = iwe_stream_add_event(info, current_ev,
        extra + IW_SCAN_MAX_DATA,
        &iwe, IW_EV_FREQ_LEN);


  iwe.cmd = IWEVQUAL;
  iwe.u.qual.level = priv->BSSinfo[i].RSSI;
  iwe.u.qual.qual = iwe.u.qual.level;

  current_ev = iwe_stream_add_event(info, current_ev,
        extra + IW_SCAN_MAX_DATA,
        &iwe, IW_EV_QUAL_LEN);


  iwe.cmd = SIOCGIWENCODE;
  if (priv->BSSinfo[i].UsingWEP)
   iwe.u.data.flags = IW_ENCODE_ENABLED | IW_ENCODE_NOKEY;
  else
   iwe.u.data.flags = IW_ENCODE_DISABLED;
  iwe.u.data.length = 0;
  current_ev = iwe_stream_add_point(info, current_ev,
        extra + IW_SCAN_MAX_DATA,
        &iwe, ((void*)0));
 }


 dwrq->length = (current_ev - extra);
 dwrq->flags = 0;

 return 0;
}
