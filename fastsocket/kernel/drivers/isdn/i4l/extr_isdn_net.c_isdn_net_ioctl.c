
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct TYPE_2__ {int p_encap; } ;
typedef TYPE_1__ isdn_net_local ;


 int EINVAL ;


 int isdn_ciscohdlck_dev_ioctl (struct net_device*,struct ifreq*,int) ;
 int isdn_ppp_dev_ioctl (struct net_device*,struct ifreq*,int) ;
 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static int isdn_net_ioctl(struct net_device *dev,
     struct ifreq *ifr, int cmd)
{
 isdn_net_local *lp = (isdn_net_local *) netdev_priv(dev);

 switch (lp->p_encap) {




 case 129:
  return isdn_ciscohdlck_dev_ioctl(dev, ifr, cmd);
 default:
  return -EINVAL;
 }
}
