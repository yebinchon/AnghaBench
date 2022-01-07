
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ base_addr; } ;


 unsigned short inw (scalar_t__) ;

__attribute__((used)) static unsigned short abyss_sifreadw(struct net_device *dev, unsigned short reg)
{
 return inw(dev->base_addr + reg);
}
