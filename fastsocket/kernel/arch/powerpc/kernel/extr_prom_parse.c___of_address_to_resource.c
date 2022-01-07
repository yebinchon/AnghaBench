
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
struct resource {unsigned long start; unsigned int flags; int name; scalar_t__ end; } ;
struct device_node {int name; } ;


 int EINVAL ;
 unsigned int IORESOURCE_IO ;
 unsigned int IORESOURCE_MEM ;
 scalar_t__ OF_BAD_ADDR ;
 int memset (struct resource*,int ,int) ;
 scalar_t__ of_translate_address (struct device_node*,int const*) ;
 unsigned long pci_address_to_pio (scalar_t__) ;

__attribute__((used)) static int __of_address_to_resource(struct device_node *dev, const u32 *addrp,
        u64 size, unsigned int flags,
        struct resource *r)
{
 u64 taddr;

 if ((flags & (IORESOURCE_IO | IORESOURCE_MEM)) == 0)
  return -EINVAL;
 taddr = of_translate_address(dev, addrp);
 if (taddr == OF_BAD_ADDR)
  return -EINVAL;
 memset(r, 0, sizeof(struct resource));
 if (flags & IORESOURCE_IO) {
  unsigned long port;
  port = pci_address_to_pio(taddr);
  if (port == (unsigned long)-1)
   return -EINVAL;
  r->start = port;
  r->end = port + size - 1;
 } else {
  r->start = taddr;
  r->end = taddr + size - 1;
 }
 r->flags = flags;
 r->name = dev->name;
 return 0;
}
