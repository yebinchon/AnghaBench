
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {int number; } ;


 int BONITO_PCICMD ;
 int BONITO_PCICMD_MABORT_CLR ;
 int BONITO_PCICMD_MTABORT_CLR ;
 int BONITO_PCIMAP_CFG ;
 int BONITO_PCIMSTAT ;
 void* CFG_SPACE_REG (int) ;
 int ID_SEL_BEGIN ;
 int MAX_DEV_NUM ;
 unsigned char PCI_ACCESS_WRITE ;
 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;
 int mmiowb () ;
 int readl (void*) ;
 int writel (int ,void*) ;

__attribute__((used)) static int bonito64_pcibios_config_access(unsigned char access_type,
          struct pci_bus *bus,
          unsigned int devfn, int where,
          u32 * data)
{
 u32 busnum = bus->number;
 u32 addr, type;
 u32 dummy;
 void *addrp;
 int device = PCI_SLOT(devfn);
 int function = PCI_FUNC(devfn);
 int reg = where & ~3;

 if (busnum == 0) {

  if (device > MAX_DEV_NUM)
   return -1;

  addr = (1 << (device + ID_SEL_BEGIN)) | (function << 8) | reg;
  type = 0;
 } else {

  addr = (busnum << 16) | (device << 11) | (function << 8) | reg;
  type = 0x10000;
 }


 BONITO_PCICMD |= BONITO_PCICMD_MABORT_CLR | BONITO_PCICMD_MTABORT_CLR;

 BONITO_PCIMAP_CFG = (addr >> 16) | type;


 dummy = BONITO_PCIMAP_CFG;
 mmiowb();

 addrp = CFG_SPACE_REG(addr & 0xffff);
 if (access_type == PCI_ACCESS_WRITE) {
  writel(cpu_to_le32(*data), addrp);


  while (BONITO_PCIMSTAT & 0xF);

 } else {
  *data = le32_to_cpu(readl(addrp));
 }


 if (BONITO_PCICMD & (BONITO_PCICMD_MABORT_CLR |
        BONITO_PCICMD_MTABORT_CLR)) {



  BONITO_PCICMD |= (BONITO_PCICMD_MABORT_CLR |
      BONITO_PCICMD_MTABORT_CLR);

  return -1;
 }

 return 0;

}
