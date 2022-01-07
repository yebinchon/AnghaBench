
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int base_addr; int name; int irq; } ;
struct mipsnet_regs {int dummy; } ;


 int IRQF_SHARED ;
 int MIPSNET_INTCTL_TESTBIT ;
 int interruptControl ;
 int mipsnet_interrupt ;
 int netif_start_queue (struct net_device*) ;
 int outl (int ,int ) ;
 int regaddr (struct net_device*,int ) ;
 int release_region (int ,int) ;
 int request_irq (int ,int *,int ,int ,void*) ;

__attribute__((used)) static int mipsnet_open(struct net_device *dev)
{
 int err;

 err = request_irq(dev->irq, &mipsnet_interrupt,
     IRQF_SHARED, dev->name, (void *) dev);
 if (err) {
  release_region(dev->base_addr, sizeof(struct mipsnet_regs));
  return err;
 }

 netif_start_queue(dev);


 outl(MIPSNET_INTCTL_TESTBIT, regaddr(dev, interruptControl));

 return 0;
}
