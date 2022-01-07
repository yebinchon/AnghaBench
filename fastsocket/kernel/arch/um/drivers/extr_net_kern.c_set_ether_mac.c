
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;


 int ETH_ALEN ;
 int memcpy (int ,unsigned char*,int ) ;

__attribute__((used)) static inline void set_ether_mac(struct net_device *dev, unsigned char *addr)
{
 memcpy(dev->dev_addr, addr, ETH_ALEN);
}
