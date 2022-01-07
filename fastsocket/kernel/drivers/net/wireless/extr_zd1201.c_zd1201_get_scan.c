
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


struct zd1201 {int mac_enabled; int rxlen; int* rxdata; scalar_t__ rxdatas; int rxdataq; scalar_t__ ap; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; scalar_t__ flags; } ;
struct TYPE_11__ {int qual; int noise; int level; int updated; } ;
struct TYPE_10__ {int length; int flags; } ;
struct TYPE_9__ {int value; scalar_t__ disabled; scalar_t__ fixed; } ;
struct TYPE_8__ {int m; scalar_t__ e; } ;
struct TYPE_7__ {int sa_data; int sa_family; } ;
struct TYPE_12__ {TYPE_5__ qual; TYPE_4__ data; TYPE_3__ bitrate; TYPE_2__ freq; int mode; TYPE_1__ ap_addr; } ;
struct iw_event {TYPE_6__ u; int cmd; } ;
typedef int __le16 ;


 int ARPHRD_ETHER ;
 int EIO ;
 int EOPNOTSUPP ;
 int IWEVQUAL ;
 int IW_ENCODE_DISABLED ;
 int IW_ENCODE_ENABLED ;
 int IW_EV_ADDR_LEN ;
 int IW_EV_FREQ_LEN ;
 int IW_EV_PARAM_LEN ;
 int IW_EV_QUAL_LEN ;
 int IW_EV_UINT_LEN ;
 int IW_MODE_ADHOC ;
 int IW_MODE_MASTER ;
 int IW_SCAN_MAX_DATA ;
 int SIOCGIWAP ;
 int SIOCGIWENCODE ;
 int SIOCGIWESSID ;
 int SIOCGIWFREQ ;
 int SIOCGIWMODE ;
 int SIOCGIWRATE ;
 int ZD1201_CMDCODE_INQUIRE ;
 scalar_t__ ZD1201_INQ_SCANRESULTS ;
 char* iwe_stream_add_event (struct iw_request_info*,char*,char*,struct iw_event*,int ) ;
 char* iwe_stream_add_point (struct iw_request_info*,char*,char*,struct iw_event*,int*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int memcpy (int ,int*,int) ;
 struct zd1201* netdev_priv (struct net_device*) ;
 int wait_event_interruptible (int ,scalar_t__) ;
 int zd1201_disable (struct zd1201*) ;
 int zd1201_docmd (struct zd1201*,int ,scalar_t__,int ,int ) ;
 int zd1201_enable (struct zd1201*) ;

__attribute__((used)) static int zd1201_get_scan(struct net_device *dev,
    struct iw_request_info *info, struct iw_point *srq, char *extra)
{
 struct zd1201 *zd = netdev_priv(dev);
 int err, i, j, enabled_save;
 struct iw_event iwe;
 char *cev = extra;
 char *end_buf = extra + IW_SCAN_MAX_DATA;


 if (zd->ap)
  return -EOPNOTSUPP;


 enabled_save = zd->mac_enabled;
 zd1201_enable(zd);

 zd->rxdatas = 0;
 err = zd1201_docmd(zd, ZD1201_CMDCODE_INQUIRE,
      ZD1201_INQ_SCANRESULTS, 0, 0);
 if (err)
  return err;

 wait_event_interruptible(zd->rxdataq, zd->rxdatas);
 if (!zd->rxlen)
  return -EIO;

 if (le16_to_cpu(*(__le16*)&zd->rxdata[2]) != ZD1201_INQ_SCANRESULTS)
  return -EIO;

 for(i=8; i<zd->rxlen; i+=62) {
  iwe.cmd = SIOCGIWAP;
  iwe.u.ap_addr.sa_family = ARPHRD_ETHER;
  memcpy(iwe.u.ap_addr.sa_data, zd->rxdata+i+6, 6);
  cev = iwe_stream_add_event(info, cev, end_buf,
        &iwe, IW_EV_ADDR_LEN);

  iwe.cmd = SIOCGIWESSID;
  iwe.u.data.length = zd->rxdata[i+16];
  iwe.u.data.flags = 1;
  cev = iwe_stream_add_point(info, cev, end_buf,
        &iwe, zd->rxdata+i+18);

  iwe.cmd = SIOCGIWMODE;
  if (zd->rxdata[i+14]&0x01)
   iwe.u.mode = IW_MODE_MASTER;
  else
   iwe.u.mode = IW_MODE_ADHOC;
  cev = iwe_stream_add_event(info, cev, end_buf,
        &iwe, IW_EV_UINT_LEN);

  iwe.cmd = SIOCGIWFREQ;
  iwe.u.freq.m = zd->rxdata[i+0];
  iwe.u.freq.e = 0;
  cev = iwe_stream_add_event(info, cev, end_buf,
        &iwe, IW_EV_FREQ_LEN);

  iwe.cmd = SIOCGIWRATE;
  iwe.u.bitrate.fixed = 0;
  iwe.u.bitrate.disabled = 0;
  for (j=0; j<10; j++) if (zd->rxdata[i+50+j]) {
   iwe.u.bitrate.value = (zd->rxdata[i+50+j]&0x7f)*500000;
   cev = iwe_stream_add_event(info, cev, end_buf,
         &iwe, IW_EV_PARAM_LEN);
  }

  iwe.cmd = SIOCGIWENCODE;
  iwe.u.data.length = 0;
  if (zd->rxdata[i+14]&0x10)
   iwe.u.data.flags = IW_ENCODE_ENABLED;
  else
   iwe.u.data.flags = IW_ENCODE_DISABLED;
  cev = iwe_stream_add_point(info, cev, end_buf, &iwe, ((void*)0));

  iwe.cmd = IWEVQUAL;
  iwe.u.qual.qual = zd->rxdata[i+4];
  iwe.u.qual.noise= zd->rxdata[i+2]/10-100;
  iwe.u.qual.level = (256+zd->rxdata[i+4]*100)/255-100;
  iwe.u.qual.updated = 7;
  cev = iwe_stream_add_event(info, cev, end_buf,
        &iwe, IW_EV_QUAL_LEN);
 }

 if (!enabled_save)
  zd1201_disable(zd);

 srq->length = cev - extra;
 srq->flags = 0;

 return 0;
}
