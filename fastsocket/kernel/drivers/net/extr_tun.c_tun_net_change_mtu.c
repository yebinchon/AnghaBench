
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ hard_header_len; int mtu; } ;


 int EINVAL ;
 scalar_t__ MAX_MTU ;
 int MIN_MTU ;

__attribute__((used)) static int
tun_net_change_mtu(struct net_device *dev, int new_mtu)
{
 if (new_mtu < MIN_MTU || new_mtu + dev->hard_header_len > MAX_MTU)
  return -EINVAL;
 dev->mtu = new_mtu;
 return 0;
}
