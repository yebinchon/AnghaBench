
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_bus {int dummy; } ;
struct TYPE_2__ {int icd; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 int check_abort () ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 scalar_t__ mkaddr (struct pci_bus*,unsigned int,int) ;
 TYPE_1__* tx3927_pcicptr ;

__attribute__((used)) static int tx3927_pci_write_config(struct pci_bus *bus, unsigned int devfn,
 int where, int size, u32 val)
{
 if (mkaddr(bus, devfn, where))
  return PCIBIOS_DEVICE_NOT_FOUND;

 switch (size) {
 case 1:
  *(volatile u8 *) ((unsigned long) & tx3927_pcicptr->icd | (where & 3)) = val;
  break;

 case 2:
  *(volatile u16 *) ((unsigned long) & tx3927_pcicptr->icd | (where & 2)) =
     cpu_to_le16(val);
  break;

 case 4:
  tx3927_pcicptr->icd = cpu_to_le32(val);
 }

 return check_abort();
}
