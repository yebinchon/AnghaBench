
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;




 int igb_mii_ioctl (struct net_device*,struct ifreq*,int) ;
 int igb_ptp_hwtstamp_ioctl (struct net_device*,struct ifreq*,int) ;

__attribute__((used)) static int igb_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
 switch (cmd) {
 case 131:
 case 130:
 case 128:
  return igb_mii_ioctl(netdev, ifr, cmd);
 case 129:
  return igb_ptp_hwtstamp_ioctl(netdev, ifr, cmd);
 default:
  return -EOPNOTSUPP;
 }
}
