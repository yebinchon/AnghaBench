
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;


 int ETH_ALEN ;
 int memcpy (int ,unsigned char*,int ) ;

__attribute__((used)) static void inline set_ether_mac(void *d, unsigned char *addr)
{
 struct net_device *dev = d;
 memcpy(dev->dev_addr, addr, ETH_ALEN);
}
