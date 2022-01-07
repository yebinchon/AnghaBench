
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssb_device {int dummy; } ;
struct TYPE_2__ {struct ssb_device* dev; } ;
struct ssb_bus {TYPE_1__ mipscore; } ;


 int SSB_INTVEC ;
 int SSB_IPSFLAG ;
 int* ipsflag_irq_mask ;
 int ssb_read32 (struct ssb_device*,int ) ;
 int ssb_write32 (struct ssb_device*,int ,int) ;

__attribute__((used)) static void clear_irq(struct ssb_bus *bus, unsigned int irq)
{
 struct ssb_device *dev = bus->mipscore.dev;


 if (irq == 0) {
  ssb_write32(dev, SSB_INTVEC, 0);
 } else {
  ssb_write32(dev, SSB_IPSFLAG,
       ssb_read32(dev, SSB_IPSFLAG) |
       ipsflag_irq_mask[irq]);
 }
}
