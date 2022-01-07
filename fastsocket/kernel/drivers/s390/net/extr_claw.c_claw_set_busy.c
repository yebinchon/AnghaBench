
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ ml_priv; } ;
struct claw_privbk {int tbusy; } ;


 int eieio () ;

__attribute__((used)) static inline void
claw_set_busy(struct net_device *dev)
{
 ((struct claw_privbk *)dev->ml_priv)->tbusy = 1;
 eieio();
}
