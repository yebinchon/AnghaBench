
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_10__ {int sa_data; } ;
struct TYPE_11__ {int data; TYPE_1__ ap_addr; scalar_t__ name; } ;
struct iwreq {TYPE_2__ u; } ;
struct ifreq {int dummy; } ;
struct hostap_interface {TYPE_3__* local; } ;
struct TYPE_12__ {int dev; TYPE_9__* ap; } ;
typedef TYPE_3__ local_info_t ;
struct TYPE_13__ {int mac_restrictions; } ;


 int CAP_NET_ADMIN ;
 int EOPNOTSUPP ;
 int EPERM ;
 int ap_control_add_mac (int *,int ) ;
 int ap_control_del_mac (int *,int ) ;
 int ap_control_kick_mac (TYPE_9__*,int ,int ) ;
 int ap_mac_cmd_ioctl (TYPE_3__*,int*) ;
 int capable (int ) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int prism2_ioctl_priv_download (TYPE_3__*,int *) ;
 int prism2_ioctl_priv_hostapd (TYPE_3__*,int *) ;
 int prism2_ioctl_priv_inquire (struct net_device*,int*) ;
 int prism2_ioctl_priv_monitor (struct net_device*,int*) ;
 int prism2_ioctl_priv_reset (struct net_device*,int*) ;
 int prism2_ioctl_priv_set_rid_word (struct net_device*,int*) ;
 int prism2_wds_add (TYPE_3__*,int ,int) ;
 int prism2_wds_del (TYPE_3__*,int ,int,int ) ;

int hostap_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct iwreq *wrq = (struct iwreq *) ifr;
 struct hostap_interface *iface;
 local_info_t *local;
 int ret = 0;

 iface = netdev_priv(dev);
 local = iface->local;

 switch (cmd) {



 case 135:
  if (!capable(CAP_NET_ADMIN)) ret = -EPERM;
  else ret = prism2_ioctl_priv_inquire(dev, (int *) wrq->u.name);
  break;

 case 132:
  if (!capable(CAP_NET_ADMIN)) ret = -EPERM;
  else ret = prism2_ioctl_priv_monitor(dev, (int *) wrq->u.name);
  break;

 case 131:
  if (!capable(CAP_NET_ADMIN)) ret = -EPERM;
  else ret = prism2_ioctl_priv_reset(dev, (int *) wrq->u.name);
  break;

 case 129:
  if (!capable(CAP_NET_ADMIN)) ret = -EPERM;
  else ret = prism2_wds_add(local, wrq->u.ap_addr.sa_data, 1);
  break;

 case 128:
  if (!capable(CAP_NET_ADMIN)) ret = -EPERM;
  else ret = prism2_wds_del(local, wrq->u.ap_addr.sa_data, 1, 0);
  break;

 case 130:
  if (!capable(CAP_NET_ADMIN)) ret = -EPERM;
  else ret = prism2_ioctl_priv_set_rid_word(dev,
         (int *) wrq->u.name);
  break;


 case 133:
  if (!capable(CAP_NET_ADMIN)) ret = -EPERM;
  else ret = ap_mac_cmd_ioctl(local, (int *) wrq->u.name);
  break;

 case 139:
  if (!capable(CAP_NET_ADMIN)) ret = -EPERM;
  else ret = ap_control_add_mac(&local->ap->mac_restrictions,
           wrq->u.ap_addr.sa_data);
  break;
 case 138:
  if (!capable(CAP_NET_ADMIN)) ret = -EPERM;
  else ret = ap_control_del_mac(&local->ap->mac_restrictions,
           wrq->u.ap_addr.sa_data);
  break;
 case 134:
  if (!capable(CAP_NET_ADMIN)) ret = -EPERM;
  else ret = ap_control_kick_mac(local->ap, local->dev,
            wrq->u.ap_addr.sa_data);
  break;
 case 136:
  if (!capable(CAP_NET_ADMIN)) ret = -EPERM;
  else ret = prism2_ioctl_priv_hostapd(local, &wrq->u.data);
  break;

 default:
  ret = -EOPNOTSUPP;
  break;
 }

 return ret;
}
