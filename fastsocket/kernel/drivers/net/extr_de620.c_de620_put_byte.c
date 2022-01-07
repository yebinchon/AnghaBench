
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int byte ;


 int DATA_PORT ;
 int de620_flip_ds (struct net_device*) ;
 int de620_ready (struct net_device*) ;
 int outb (int ,int ) ;

__attribute__((used)) static inline void
de620_put_byte(struct net_device *dev, byte value)
{

 de620_ready(dev);
 outb(value, DATA_PORT);
 de620_flip_ds(dev);
}
