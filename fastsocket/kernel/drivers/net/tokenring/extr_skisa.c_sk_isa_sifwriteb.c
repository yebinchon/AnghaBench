
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ base_addr; } ;


 int outb (unsigned short,scalar_t__) ;

__attribute__((used)) static void sk_isa_sifwriteb(struct net_device *dev, unsigned short val, unsigned short reg)
{
 outb(val, dev->base_addr + reg);
}
