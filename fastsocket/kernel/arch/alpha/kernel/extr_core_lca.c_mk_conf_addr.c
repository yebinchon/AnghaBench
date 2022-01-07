
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vulp ;
typedef int u8 ;
struct pci_bus {int number; } ;


 scalar_t__ LCA_IOC_CONF ;

__attribute__((used)) static int
mk_conf_addr(struct pci_bus *pbus, unsigned int device_fn, int where,
      unsigned long *pci_addr)
{
 unsigned long addr;
 u8 bus = pbus->number;

 if (bus == 0) {
  int device = device_fn >> 3;
  int func = device_fn & 0x7;



  if (device > 12) {
   return -1;
  }

  *(vulp)LCA_IOC_CONF = 0;
  addr = (1 << (11 + device)) | (func << 8) | where;
 } else {

  *(vulp)LCA_IOC_CONF = 1;
  addr = (bus << 16) | (device_fn << 8) | where;
 }
 *pci_addr = addr;
 return 0;
}
