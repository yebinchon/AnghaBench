
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct ssb_device {struct ssb_bus* bus; } ;
struct ssb_bus {int bar_lock; scalar_t__ mmio; } ;


 scalar_t__ likely (int) ;
 int readb (scalar_t__) ;
 int select_core_and_segment (struct ssb_device*,scalar_t__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u8 ssb_pcmcia_read8(struct ssb_device *dev, u16 offset)
{
 struct ssb_bus *bus = dev->bus;
 unsigned long flags;
 int err;
 u8 value = 0xFF;

 spin_lock_irqsave(&bus->bar_lock, flags);
 err = select_core_and_segment(dev, &offset);
 if (likely(!err))
  value = readb(bus->mmio + offset);
 spin_unlock_irqrestore(&bus->bar_lock, flags);

 return value;
}
