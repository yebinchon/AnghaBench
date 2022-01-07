
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;


 int EINVAL ;
 int ENET_PACKET_SIZE ;
 int pr_info (char*,int) ;

__attribute__((used)) static int sb1250_change_mtu(struct net_device *_dev, int new_mtu)
{
 if (new_mtu > ENET_PACKET_SIZE)
  return -EINVAL;
 _dev->mtu = new_mtu;
 pr_info("changing the mtu to %d\n", new_mtu);
 return 0;
}
