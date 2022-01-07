
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zd1201 {short monitor; int essidlen; int essid; TYPE_1__* dev; scalar_t__ ap; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
typedef int __u32 ;
typedef int __le16 ;
struct TYPE_2__ {int type; } ;


 int ARPHRD_ETHER ;
 int ARPHRD_IEEE80211 ;
 int EINVAL ;
 int IW_ESSID_MAX_SIZE ;


 int IW_MODE_MASTER ;

 short ZD1201_PORTTYPE_BSS ;
 short ZD1201_PORTTYPE_IBSS ;
 short ZD1201_PORTTYPE_PSEUDOIBSS ;
 int ZD1201_RID_CNFDESIREDSSID ;
 int ZD1201_RID_CNFPORTTYPE ;
 int ZD1201_RID_PROMISCUOUSMODE ;
 int cpu_to_le16 (int ) ;
 int memcpy (unsigned char*,int ,int ) ;
 struct zd1201* netdev_priv (struct net_device*) ;
 int zd1201_disable (struct zd1201*) ;
 int zd1201_join (struct zd1201*,char*,int) ;
 int zd1201_mac_reset (struct zd1201*) ;
 int zd1201_setconfig (struct zd1201*,int ,unsigned char*,int,int) ;
 int zd1201_setconfig16 (struct zd1201*,int ,short) ;

__attribute__((used)) static int zd1201_set_mode(struct net_device *dev,
    struct iw_request_info *info, __u32 *mode, char *extra)
{
 struct zd1201 *zd = netdev_priv(dev);
 short porttype, monitor = 0;
 unsigned char buffer[IW_ESSID_MAX_SIZE+2];
 int err;

 if (zd->ap) {
  if (*mode != IW_MODE_MASTER)
   return -EINVAL;
  return 0;
 }

 err = zd1201_setconfig16(zd, ZD1201_RID_PROMISCUOUSMODE, 0);
 if (err)
  return err;
 zd->dev->type = ARPHRD_ETHER;
 switch(*mode) {
  case 128:
   monitor = 1;
   zd->dev->type = ARPHRD_IEEE80211;




   zd1201_join(zd, "\0-*#\0", 5);

  case 8:
   porttype = ZD1201_PORTTYPE_PSEUDOIBSS;
   break;
  case 130:
   porttype = ZD1201_PORTTYPE_IBSS;
   break;
  case 129:
   porttype = ZD1201_PORTTYPE_BSS;
   break;
  default:
   return -EINVAL;
 }

 err = zd1201_setconfig16(zd, ZD1201_RID_CNFPORTTYPE, porttype);
 if (err)
  return err;
 if (zd->monitor && !monitor) {
   zd1201_disable(zd);
   *(__le16 *)buffer = cpu_to_le16(zd->essidlen);
   memcpy(buffer+2, zd->essid, zd->essidlen);
   err = zd1201_setconfig(zd, ZD1201_RID_CNFDESIREDSSID,
       buffer, IW_ESSID_MAX_SIZE+2, 1);
   if (err)
    return err;
 }
 zd->monitor = monitor;



 zd1201_mac_reset(zd);

 return 0;
}
