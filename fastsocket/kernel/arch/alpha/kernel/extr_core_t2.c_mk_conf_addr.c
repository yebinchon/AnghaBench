
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_bus {int number; } ;


 int DBG (char*) ;

__attribute__((used)) static int
mk_conf_addr(struct pci_bus *pbus, unsigned int device_fn, int where,
      unsigned long *pci_addr, unsigned char *type1)
{
 unsigned long addr;
 u8 bus = pbus->number;

 DBG(("mk_conf_addr(bus=%d, dfn=0x%x, where=0x%x,"
      " addr=0x%lx, type1=0x%x)\n",
      bus, device_fn, where, pci_addr, type1));

 if (bus == 0) {
  int device = device_fn >> 3;



  if (device > 8) {
   DBG(("mk_conf_addr: device (%d)>20, returning -1\n",
        device));
   return -1;
  }

  *type1 = 0;
  addr = (0x0800L << device) | ((device_fn & 7) << 8) | (where);
 } else {

  *type1 = 1;
  addr = (bus << 16) | (device_fn << 8) | (where);
 }
 *pci_addr = addr;
 DBG(("mk_conf_addr: returning pci_addr 0x%lx\n", addr));
 return 0;
}
