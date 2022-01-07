
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ ml_priv; } ;
struct claw_privbk {int tbusy; } ;


 int clear_bit (int ,int *) ;
 int eieio () ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static inline void
claw_clear_busy(struct net_device *dev)
{
 clear_bit(0, &(((struct claw_privbk *) dev->ml_priv)->tbusy));
 netif_wake_queue(dev);
 eieio();
}
