
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ifreq {int ifr_data; } ;
struct TYPE_2__ {scalar_t__ p_encap; int ppp_slot; } ;
typedef TYPE_1__ isdn_net_local ;


 int EFAULT ;
 int EINVAL ;
 scalar_t__ ISDN_NET_ENCAP_SYNCPPP ;
 int PPP_VERSION ;


 int copy_to_user (int ,int ,int) ;
 int isdn_ppp_dev_ioctl_stats (int ,struct ifreq*,struct net_device*) ;
 scalar_t__ netdev_priv (struct net_device*) ;
 int strlen (int ) ;

int
isdn_ppp_dev_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 int error=0;
 int len;
 isdn_net_local *lp = (isdn_net_local *) netdev_priv(dev);


 if (lp->p_encap != ISDN_NET_ENCAP_SYNCPPP)
  return -EINVAL;

 switch (cmd) {

  case 128:
   len = strlen("2.3.7") + 1;
   if (copy_to_user(ifr->ifr_data, "2.3.7", len))
    error = -EFAULT;
   break;

  case 129:
   error = isdn_ppp_dev_ioctl_stats(lp->ppp_slot, ifr, dev);
   break;
  default:
   error = -EINVAL;
   break;
 }
 return error;
}
