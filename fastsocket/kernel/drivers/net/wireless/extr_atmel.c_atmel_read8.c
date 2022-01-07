
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct net_device {scalar_t__ base_addr; } ;


 int inb (scalar_t__) ;

__attribute__((used)) static inline u8 atmel_read8(struct net_device *dev, u16 offset)
{
 return inb(dev->base_addr + offset);
}
