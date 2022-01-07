
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phantom_device {unsigned long status; scalar_t__ caddr; scalar_t__ iaddr; int counter; } ;


 unsigned long PHB_RUNNING ;
 scalar_t__ PHN_CONTROL ;
 int PHN_CTL_IRQ ;
 scalar_t__ PHN_IRQCTL ;
 int atomic_set (int *,int ) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int pr_debug (char*,unsigned long,unsigned long) ;

__attribute__((used)) static int phantom_status(struct phantom_device *dev, unsigned long newstat)
{
 pr_debug("phantom_status %lx %lx\n", dev->status, newstat);

 if (!(dev->status & PHB_RUNNING) && (newstat & PHB_RUNNING)) {
  atomic_set(&dev->counter, 0);
  iowrite32(PHN_CTL_IRQ, dev->iaddr + PHN_CONTROL);
  iowrite32(0x43, dev->caddr + PHN_IRQCTL);
  ioread32(dev->caddr + PHN_IRQCTL);
 } else if ((dev->status & PHB_RUNNING) && !(newstat & PHB_RUNNING)) {
  iowrite32(0, dev->caddr + PHN_IRQCTL);
  ioread32(dev->caddr + PHN_IRQCTL);
 }

 dev->status = newstat;

 return 0;
}
