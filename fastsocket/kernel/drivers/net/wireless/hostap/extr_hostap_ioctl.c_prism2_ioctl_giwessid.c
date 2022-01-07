
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int length; } ;
struct hostap_interface {scalar_t__ type; TYPE_2__* local; } ;
typedef int ssid ;
struct TYPE_4__ {scalar_t__ iw_mode; char* essid; TYPE_1__* func; } ;
typedef TYPE_2__ local_info_t ;
typedef int __le16 ;
struct TYPE_3__ {int (* get_rid ) (struct net_device*,int ,char**,int,int ) ;} ;


 int EOPNOTSUPP ;
 int HFA384X_RID_CURRENTSSID ;
 scalar_t__ HOSTAP_INTERFACE_WDS ;
 int IW_ESSID_MAX_SIZE ;
 scalar_t__ IW_MODE_MASTER ;
 int MAX_SSID_LEN ;
 int le16_to_cpu (int ) ;
 int memcpy (char*,char*,int ) ;
 int memset (char*,int ,int) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int strlen (char*) ;
 int stub1 (struct net_device*,int ,char**,int,int ) ;

__attribute__((used)) static int prism2_ioctl_giwessid(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_point *data, char *essid)
{
 struct hostap_interface *iface;
 local_info_t *local;
 u16 val;

 iface = netdev_priv(dev);
 local = iface->local;

 if (iface->type == HOSTAP_INTERFACE_WDS)
  return -EOPNOTSUPP;

 data->flags = 1;
 if (local->iw_mode == IW_MODE_MASTER) {
  data->length = strlen(local->essid);
  memcpy(essid, local->essid, IW_ESSID_MAX_SIZE);
 } else {
  int len;
  char ssid[MAX_SSID_LEN + 2];
  memset(ssid, 0, sizeof(ssid));
  len = local->func->get_rid(dev, HFA384X_RID_CURRENTSSID,
        &ssid, MAX_SSID_LEN + 2, 0);
  val = le16_to_cpu(*(__le16 *) ssid);
  if (len > MAX_SSID_LEN + 2 || len < 0 || val > MAX_SSID_LEN) {
   return -EOPNOTSUPP;
  }
  data->length = val;
  memcpy(essid, ssid + 2, IW_ESSID_MAX_SIZE);
 }

 return 0;
}
