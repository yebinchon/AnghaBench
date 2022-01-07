
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct iwreq {TYPE_1__ u; } ;
struct ifreq {int dummy; } ;


 int CAP_NET_ADMIN ;
 int EOPNOTSUPP ;
 int EPERM ;

 int capable (int ) ;
 int prism54_hostapd (struct net_device*,int *) ;

int
prism54_ioctl(struct net_device *ndev, struct ifreq *rq, int cmd)
{
 struct iwreq *wrq = (struct iwreq *) rq;
 int ret = -1;
 switch (cmd) {
  case 128:
  if (!capable(CAP_NET_ADMIN))
  return -EPERM;
  ret = prism54_hostapd(ndev, &wrq->u.data);
  return ret;
 }
 return -EOPNOTSUPP;
}
