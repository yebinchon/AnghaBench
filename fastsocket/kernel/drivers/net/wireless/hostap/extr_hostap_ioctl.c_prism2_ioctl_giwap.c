
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr {int sa_data; int sa_family; } ;
struct net_device {int * dev_addr; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_5__ {int * remote_addr; } ;
struct TYPE_6__ {TYPE_1__ wds; } ;
struct hostap_interface {int type; TYPE_2__ u; TYPE_4__* local; } ;
struct TYPE_8__ {int * bssid; TYPE_3__* func; int * assoc_ap_addr; } ;
typedef TYPE_4__ local_info_t ;
struct TYPE_7__ {int (* get_rid ) (struct net_device*,int ,int *,int ,int) ;} ;


 int ARPHRD_ETHER ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 int HFA384X_RID_CURRENTBSSID ;



 int memcpy (int *,int *,int ) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int stub1 (struct net_device*,int ,int *,int ,int) ;

__attribute__((used)) static int prism2_ioctl_giwap(struct net_device *dev,
         struct iw_request_info *info,
         struct sockaddr *ap_addr, char *extra)
{
 struct hostap_interface *iface;
 local_info_t *local;

 iface = netdev_priv(dev);
 local = iface->local;

 ap_addr->sa_family = ARPHRD_ETHER;
 switch (iface->type) {
 case 130:
  memcpy(&ap_addr->sa_data, dev->dev_addr, ETH_ALEN);
  break;
 case 129:
  memcpy(&ap_addr->sa_data, local->assoc_ap_addr, ETH_ALEN);
  break;
 case 128:
  memcpy(&ap_addr->sa_data, iface->u.wds.remote_addr, ETH_ALEN);
  break;
 default:
  if (local->func->get_rid(dev, HFA384X_RID_CURRENTBSSID,
      &ap_addr->sa_data, ETH_ALEN, 1) < 0)
   return -EOPNOTSUPP;



  memcpy(local->bssid, &ap_addr->sa_data, ETH_ALEN);
  break;
 }

 return 0;
}
