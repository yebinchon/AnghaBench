
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
 int SAL_CALL (struct ia64_sal_retval,int ,int ,int ,int ,int ,scalar_t__,int,int ) ;
 TYPE_1__* SN_PCIBUS_BUSSOFT (struct pci_bus*) ;
 int SN_SAL_IOIF_PCI_SAFE ;
 unsigned long __IA64_UNCACHED_OFFSET ;
 int __pa (int*) ;
 int ia64_sn_probe_mem (unsigned long,long,void*) ;
 int pci_domain_nr (struct pci_bus*) ;

int sn_pci_legacy_read(struct pci_bus *bus, u16 port, u32 *val, u8 size)
{
 unsigned long addr;
 int ret;
 struct ia64_sal_retval isrv;







 SAL_CALL(isrv, SN_SAL_IOIF_PCI_SAFE,
   pci_domain_nr(bus), bus->number,
   0,
   0,
   port, size, __pa(val));

 if (isrv.status == 0)
  return size;
 if (!SN_PCIBUS_BUSSOFT(bus))
  return -ENODEV;

 addr = SN_PCIBUS_BUSSOFT(bus)->bs_legacy_io | __IA64_UNCACHED_OFFSET;
 addr += port;

 ret = ia64_sn_probe_mem(addr, (long)size, (void *)val);

 if (ret == 2)
  return -EINVAL;

 if (ret == 1)
  *val = -1;

 return size;
}
