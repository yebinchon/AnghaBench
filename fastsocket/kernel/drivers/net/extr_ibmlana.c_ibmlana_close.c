
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ irq; } ;


 int free_irq (scalar_t__,struct net_device*) ;

__attribute__((used)) static int ibmlana_close(struct net_device *dev)
{



 if (dev->irq != 0)
  free_irq(dev->irq, dev);
 dev->irq = 0;
 return 0;
}
