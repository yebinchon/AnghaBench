
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int hdlc_ioctl (struct net_device*,struct ifreq*,int) ;

__attribute__((used)) static int hostess_ioctl(struct net_device *d, struct ifreq *ifr, int cmd)
{


 return hdlc_ioctl(d, ifr, cmd);
}
