
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct net_device {scalar_t__ base_addr; } ;


 int outw (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void atmel_write16(struct net_device *dev, u16 offset, u16 data)
{
 outw(data, dev->base_addr + offset);
}
