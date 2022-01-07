
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int mcs_net_ioctl(struct net_device *netdev, struct ifreq *rq, int cmd)
{


 int ret = 0;

 switch (cmd) {
 default:
  ret = -EOPNOTSUPP;
 }

 return ret;
}
