
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ base_addr; } ;


 unsigned short inw (scalar_t__) ;

__attribute__((used)) static inline unsigned short scb_status(struct net_device *dev)
{
 return inw(dev->base_addr + 0xc008);
}
