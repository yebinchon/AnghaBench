
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct TYPE_2__ {int device; } ;
struct if_phonet_req {TYPE_1__ ifr_phonet_autoconf; } ;


 int ENOIOCTLCMD ;
 int PN_DEV_PC ;


__attribute__((used)) static int usbpn_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct if_phonet_req *req = (struct if_phonet_req *)ifr;

 switch (cmd) {
 case 128:
  req->ifr_phonet_autoconf.device = PN_DEV_PC;
  return 0;
 }
 return -ENOIOCTLCMD;
}
