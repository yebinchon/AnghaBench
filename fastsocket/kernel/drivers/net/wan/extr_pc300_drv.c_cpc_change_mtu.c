
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int EINVAL ;
 int PC300_DEF_MTU ;

__attribute__((used)) static int cpc_change_mtu(struct net_device *dev, int new_mtu)
{
 if ((new_mtu < 128) || (new_mtu > PC300_DEF_MTU))
  return -EINVAL;
 dev->mtu = new_mtu;
 return 0;
}
