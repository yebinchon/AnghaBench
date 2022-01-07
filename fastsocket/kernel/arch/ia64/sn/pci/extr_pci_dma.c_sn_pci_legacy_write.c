
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct pci_bus {int number; } ;
struct ia64_sal_retval {scalar_t__ status; } ;
struct TYPE_2__ {unsigned long bs_legacy_io; } ;


 int EINVAL ;
 int ENODEV ;
 int SAL_CALL (struct ia64_sal_retval,int ,int ,int ,int ,int,scalar_t__,int,int ) ;
 TYPE_1__* SN_PCIBUS_BUSSOFT (struct pci_bus*) ;
 int SN_SAL_IOIF_PCI_SAFE ;
 unsigned long __IA64_UNCACHED_OFFSET ;
 int __pa (int *) ;
 int pci_domain_nr (struct pci_bus*) ;

int sn_pci_legacy_write(struct pci_bus *bus, u16 port, u32 val, u8 size)
{
 int ret = size;
 unsigned long paddr;
 unsigned long *addr;
 struct ia64_sal_retval isrv;







 SAL_CALL(isrv, SN_SAL_IOIF_PCI_SAFE,
   pci_domain_nr(bus), bus->number,
   0,
   1,
   port, size, __pa(&val));

 if (isrv.status == 0)
  return size;
 if (!SN_PCIBUS_BUSSOFT(bus)) {
  ret = -ENODEV;
  goto out;
 }


 paddr = SN_PCIBUS_BUSSOFT(bus)->bs_legacy_io | __IA64_UNCACHED_OFFSET;
 paddr += port;
 addr = (unsigned long *)paddr;

 switch (size) {
 case 1:
  *(volatile u8 *)(addr) = (u8)(val);
  break;
 case 2:
  *(volatile u16 *)(addr) = (u16)(val);
  break;
 case 4:
  *(volatile u32 *)(addr) = (u32)(val);
  break;
 default:
  ret = -EINVAL;
  break;
 }
 out:
 return ret;
}
