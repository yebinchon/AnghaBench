
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct ssb_device {struct ssb_bus* bus; } ;
struct ssb_bus {scalar_t__ mmio; struct ssb_device* mapped_device; } ;


 int iowrite8 (int ,scalar_t__) ;
 int ssb_pci_assert_buspower (struct ssb_bus*) ;
 int ssb_pci_switch_core (struct ssb_bus*,struct ssb_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ssb_pci_write8(struct ssb_device *dev, u16 offset, u8 value)
{
 struct ssb_bus *bus = dev->bus;

 if (unlikely(ssb_pci_assert_buspower(bus)))
  return;
 if (unlikely(bus->mapped_device != dev)) {
  if (unlikely(ssb_pci_switch_core(bus, dev)))
   return;
 }
 iowrite8(value, bus->mmio + offset);
}
