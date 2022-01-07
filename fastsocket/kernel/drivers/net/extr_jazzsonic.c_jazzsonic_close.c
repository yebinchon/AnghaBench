
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;


 int free_irq (int ,struct net_device*) ;
 int sonic_close (struct net_device*) ;

__attribute__((used)) static int jazzsonic_close(struct net_device* dev)
{
 int err;
 err = sonic_close(dev);
 free_irq(dev->irq, dev);
 return err;
}
