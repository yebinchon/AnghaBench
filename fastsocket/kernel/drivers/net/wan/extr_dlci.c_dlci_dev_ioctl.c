
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {scalar_t__ dev_addr; } ;
struct ifreq {int ifr_data; int ifr_slave; } ;
struct dlci_local {TYPE_1__* slave; } ;
struct TYPE_2__ {int name; } ;


 int CAP_NET_ADMIN ;



 int EINVAL ;
 int EOPNOTSUPP ;
 int EPERM ;
 int capable (int ) ;
 int dlci_config (struct net_device*,int ,int) ;
 struct dlci_local* netdev_priv (struct net_device*) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int dlci_dev_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct dlci_local *dlp;

 if (!capable(CAP_NET_ADMIN))
  return(-EPERM);

 dlp = netdev_priv(dev);

 switch(cmd)
 {
  case 129:
   if (!*(short *)(dev->dev_addr))
    return(-EINVAL);

   strncpy(ifr->ifr_slave, dlp->slave->name, sizeof(ifr->ifr_slave));
   break;

  case 130:
  case 128:
   if (!*(short *)(dev->dev_addr))
    return(-EINVAL);

   return(dlci_config(dev, ifr->ifr_data, cmd == 130));
   break;

  default:
   return(-EOPNOTSUPP);
 }
 return(0);
}
