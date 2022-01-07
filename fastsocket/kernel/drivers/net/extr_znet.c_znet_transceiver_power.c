
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct znet_private {scalar_t__ sia_base; } ;
struct net_device {int dummy; } ;


 int inb (scalar_t__) ;
 struct znet_private* netdev_priv (struct net_device*) ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static void znet_transceiver_power (struct net_device *dev, int on)
{
 struct znet_private *znet = netdev_priv(dev);
 unsigned char v;



 outb(0x10, znet->sia_base);

 if (on)
  v = inb(znet->sia_base + 1) | 0x84;
 else
  v = inb(znet->sia_base + 1) & ~0x84;

 outb(v, znet->sia_base+1);
}
