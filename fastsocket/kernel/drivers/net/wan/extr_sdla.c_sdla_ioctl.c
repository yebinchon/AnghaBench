
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int type; } ;
struct ifreq {int ifr_data; int ifr_flags; } ;
struct frad_local {int configured; int type; int initialized; } ;



 int CAP_NET_ADMIN ;
 int CAP_SYS_RAWIO ;
 int EALREADY ;
 int EINVAL ;
 int ENOPROTOOPT ;
 int EOPNOTSUPP ;
 int EPERM ;
 int capable (int ) ;
 struct frad_local* netdev_priv (struct net_device*) ;
 int sdla_clear (struct net_device*) ;
 int sdla_config (struct net_device*,int ,int) ;
 int sdla_cpuspeed (struct net_device*,struct ifreq*) ;
 int sdla_start (struct net_device*) ;
 int sdla_stop (struct net_device*) ;
 int sdla_xfer (struct net_device*,int ,int) ;

__attribute__((used)) static int sdla_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct frad_local *flp;

 if(!capable(CAP_NET_ADMIN))
  return -EPERM;

 flp = netdev_priv(dev);

 if (!flp->initialized)
  return(-EINVAL);

 switch (cmd)
 {
  case 137:
  case 136:
   return(sdla_config(dev, ifr->ifr_data, cmd == 137));

  case 133:
   ifr->ifr_flags = flp->type;
   break;

  case 134:
   return(sdla_cpuspeed(dev, ifr));







  case 132:
   if (flp->configured)
    return(-EALREADY);

   switch (ifr->ifr_flags)
   {
    case 138:
     dev->type = ifr->ifr_flags;
     break;
    default:
     return(-ENOPROTOOPT);
   }
   break;

  case 135:
   sdla_clear(dev);
   break;

  case 128:
  case 131:
   if(!capable(CAP_SYS_RAWIO))
    return -EPERM;
   return(sdla_xfer(dev, ifr->ifr_data, cmd == 131));

  case 130:
   sdla_start(dev);
   break;

  case 129:
   sdla_stop(dev);
   break;

  default:
   return(-EOPNOTSUPP);
 }
 return(0);
}
