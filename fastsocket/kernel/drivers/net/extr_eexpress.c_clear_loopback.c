
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ base_addr; } ;


 scalar_t__ Config ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static inline void clear_loopback(struct net_device *dev)
{
 outb(inb(dev->base_addr + Config) & ~2, dev->base_addr + Config);
}
