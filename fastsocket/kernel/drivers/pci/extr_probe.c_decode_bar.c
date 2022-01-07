
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;


 unsigned long IORESOURCE_IO ;
 unsigned long IORESOURCE_MEM ;
 unsigned long IORESOURCE_MEM_64 ;
 unsigned long IORESOURCE_PREFETCH ;
 int PCI_BASE_ADDRESS_IO_MASK ;
 int PCI_BASE_ADDRESS_MEM_MASK ;
 unsigned long PCI_BASE_ADDRESS_MEM_PREFETCH ;



 int PCI_BASE_ADDRESS_MEM_TYPE_MASK ;
 int PCI_BASE_ADDRESS_SPACE ;
 int PCI_BASE_ADDRESS_SPACE_IO ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*,int) ;

__attribute__((used)) static inline unsigned long decode_bar(struct pci_dev *dev, u32 bar)
{
 u32 mem_type;
 unsigned long flags;

 if ((bar & PCI_BASE_ADDRESS_SPACE) == PCI_BASE_ADDRESS_SPACE_IO) {
  flags = bar & ~PCI_BASE_ADDRESS_IO_MASK;
  flags |= IORESOURCE_IO;
  return flags;
 }

 flags = bar & ~PCI_BASE_ADDRESS_MEM_MASK;
 flags |= IORESOURCE_MEM;
 if (flags & PCI_BASE_ADDRESS_MEM_PREFETCH)
  flags |= IORESOURCE_PREFETCH;

 mem_type = bar & PCI_BASE_ADDRESS_MEM_TYPE_MASK;
 switch (mem_type) {
 case 129:
  break;
 case 130:
  dev_info(&dev->dev, "1M mem BAR treated as 32-bit BAR\n");
  break;
 case 128:
  flags |= IORESOURCE_MEM_64;
  break;
 default:
  dev_warn(&dev->dev,
    "mem unknown type %x treated as 32-bit BAR\n",
    mem_type);
  break;
 }
 return flags;
}
