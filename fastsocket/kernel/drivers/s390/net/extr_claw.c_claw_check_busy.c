
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ ml_priv; } ;
struct claw_privbk {int tbusy; } ;


 int eieio () ;

__attribute__((used)) static inline int
claw_check_busy(struct net_device *dev)
{
 eieio();
 return ((struct claw_privbk *) dev->ml_priv)->tbusy;
}
