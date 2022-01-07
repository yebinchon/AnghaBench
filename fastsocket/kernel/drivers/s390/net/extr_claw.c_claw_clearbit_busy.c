
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ ml_priv; } ;
struct claw_privbk {int tbusy; } ;


 int clear_bit (int,void*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static inline void
claw_clearbit_busy(int nr,struct net_device *dev)
{
 clear_bit(nr, (void *)&(((struct claw_privbk *)dev->ml_priv)->tbusy));
 netif_wake_queue(dev);
}
