
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {scalar_t__ base_addr; } ;
struct TYPE_2__ {unsigned char hcr_val; } ;
typedef TYPE_1__ elp_device ;


 scalar_t__ PORT_CONTROL ;
 scalar_t__ netdev_priv (struct net_device*) ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static inline void outb_control(unsigned char val, struct net_device *dev)
{
 outb(val, dev->base_addr + PORT_CONTROL);
 ((elp_device *)(netdev_priv(dev)))->hcr_val = val;
}
