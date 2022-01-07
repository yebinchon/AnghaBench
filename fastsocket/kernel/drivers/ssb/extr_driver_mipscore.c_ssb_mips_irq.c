
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ssb_device {struct ssb_bus* bus; } ;
struct TYPE_2__ {struct ssb_device* dev; } ;
struct ssb_bus {TYPE_1__ mipscore; } ;


 int SSB_INTVEC ;
 int SSB_IPSFLAG ;
 int* ipsflag_irq_mask ;
 int* ipsflag_irq_shift ;
 int ssb_irqflag (struct ssb_device*) ;
 int ssb_read32 (struct ssb_device*,int ) ;

unsigned int ssb_mips_irq(struct ssb_device *dev)
{
 struct ssb_bus *bus = dev->bus;
 struct ssb_device *mdev = bus->mipscore.dev;
 u32 irqflag;
 u32 ipsflag;
 u32 tmp;
 unsigned int irq;

 irqflag = ssb_irqflag(dev);
 if (irqflag == 0x3f)
  return 6;
 ipsflag = ssb_read32(bus->mipscore.dev, SSB_IPSFLAG);
 for (irq = 1; irq <= 4; irq++) {
  tmp = ((ipsflag & ipsflag_irq_mask[irq]) >> ipsflag_irq_shift[irq]);
  if (tmp == irqflag)
   break;
 }
 if (irq == 5) {
  if ((1 << irqflag) & ssb_read32(mdev, SSB_INTVEC))
   irq = 0;
 }

 return irq;
}
