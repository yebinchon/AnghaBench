
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ ml_priv; } ;
struct claw_privbk {int tbusy; } ;


 int netif_stop_queue (struct net_device*) ;
 int test_and_set_bit (int,void*) ;

__attribute__((used)) static inline int
claw_test_and_setbit_busy(int nr,struct net_device *dev)
{
 netif_stop_queue(dev);
 return test_and_set_bit(nr,
  (void *)&(((struct claw_privbk *) dev->ml_priv)->tbusy));
}
