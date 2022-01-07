
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int EINVAL ;

__attribute__((used)) static int fwnet_change_mtu(struct net_device *net, int new_mtu)
{
 if (new_mtu < 68)
  return -EINVAL;

 net->mtu = new_mtu;
 return 0;
}
