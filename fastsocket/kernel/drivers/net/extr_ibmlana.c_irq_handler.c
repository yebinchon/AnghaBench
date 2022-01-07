
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {scalar_t__ base_addr; } ;
typedef int irqreturn_t ;


 scalar_t__ BCMREG ;
 int BCMREG_IPEND ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int ISREG_PKTRX ;
 int ISREG_RBE ;
 int ISREG_TXDN ;
 int ISREG_TXER ;
 scalar_t__ SONIC_ISREG ;
 int inb (scalar_t__) ;
 int inw (scalar_t__) ;
 int irqrbe_handler (struct net_device*) ;
 int irqrx_handler (struct net_device*) ;
 int irqtx_handler (struct net_device*) ;
 int irqtxerr_handler (struct net_device*) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t irq_handler(int dummy, void *device)
{
 struct net_device *dev = device;
 u16 ival;


 if (!(inb(dev->base_addr + BCMREG) & BCMREG_IPEND))
  return IRQ_NONE;


 while (1) {
  ival = inw(dev->base_addr + SONIC_ISREG);

  if (ival & ISREG_RBE) {
   irqrbe_handler(dev);
   outw(ISREG_RBE, dev->base_addr + SONIC_ISREG);
  }
  if (ival & ISREG_PKTRX) {
   irqrx_handler(dev);
   outw(ISREG_PKTRX, dev->base_addr + SONIC_ISREG);
  }
  if (ival & ISREG_TXDN) {
   irqtx_handler(dev);
   outw(ISREG_TXDN, dev->base_addr + SONIC_ISREG);
  }
  if (ival & ISREG_TXER) {
   irqtxerr_handler(dev);
   outw(ISREG_TXER, dev->base_addr + SONIC_ISREG);
  }
  break;
 }
 return IRQ_HANDLED;
}
