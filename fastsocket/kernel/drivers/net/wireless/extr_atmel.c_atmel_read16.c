
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct net_device {scalar_t__ base_addr; } ;


 scalar_t__ inw (scalar_t__) ;

__attribute__((used)) static inline u16 atmel_read16(struct net_device *dev, u16 offset)
{
 return inw(dev->base_addr + offset);
}
