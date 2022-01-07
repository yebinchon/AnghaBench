
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int byte ;


 int de620_flip_ds (struct net_device*) ;
 int de620_ready (struct net_device*) ;

__attribute__((used)) static inline byte
de620_read_byte(struct net_device *dev)
{
 byte value;


 value = de620_ready(dev);
 de620_flip_ds(dev);
 value |= de620_ready(dev) >> 4;
 return value;
}
