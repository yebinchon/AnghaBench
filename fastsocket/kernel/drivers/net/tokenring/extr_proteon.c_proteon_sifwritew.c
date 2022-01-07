
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ base_addr; } ;


 int outw (unsigned short,scalar_t__) ;

__attribute__((used)) static void proteon_sifwritew(struct net_device *dev, unsigned short val, unsigned short reg)
{
 outw(val, dev->base_addr + reg);
}
