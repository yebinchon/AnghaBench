
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {unsigned char number; } ;


 int GT_INTRCAUSE_MASABORT0_BIT ;
 int GT_INTRCAUSE_OFS ;
 int GT_INTRCAUSE_TARABORT0_BIT ;
 unsigned char GT_PCI0_CFGADDR_BUSNUM_SHF ;
 unsigned char GT_PCI0_CFGADDR_CONFIGEN_BIT ;
 unsigned int GT_PCI0_CFGADDR_FUNCTNUM_SHF ;
 int GT_PCI0_CFGADDR_OFS ;
 int GT_PCI0_CFGADDR_REGNUM_SHF ;
 int GT_PCI0_CFGDATA_OFS ;
 int GT_READ (int ) ;
 int GT_WRITE (int ,int) ;
 unsigned char PCI_ACCESS_WRITE ;
 unsigned int PCI_DEVFN (int,int ) ;
 scalar_t__ PCI_SLOT (unsigned int) ;
 int __GT_READ (int ) ;
 int __GT_WRITE (int ,int) ;

__attribute__((used)) static int gt64xxx_pci0_pcibios_config_access(unsigned char access_type,
  struct pci_bus *bus, unsigned int devfn, int where, u32 * data)
{
 unsigned char busnum = bus->number;
 u32 intr;

 if ((busnum == 0) && (devfn >= PCI_DEVFN(31, 0)))
  return -1;


 GT_WRITE(GT_INTRCAUSE_OFS, ~(GT_INTRCAUSE_MASABORT0_BIT |
                              GT_INTRCAUSE_TARABORT0_BIT));


 GT_WRITE(GT_PCI0_CFGADDR_OFS,
   (busnum << GT_PCI0_CFGADDR_BUSNUM_SHF) |
   (devfn << GT_PCI0_CFGADDR_FUNCTNUM_SHF) |
   ((where / 4) << GT_PCI0_CFGADDR_REGNUM_SHF) |
   GT_PCI0_CFGADDR_CONFIGEN_BIT);

 if (access_type == PCI_ACCESS_WRITE) {
  if (busnum == 0 && PCI_SLOT(devfn) == 0) {




   GT_WRITE(GT_PCI0_CFGDATA_OFS, *data);
  } else
   __GT_WRITE(GT_PCI0_CFGDATA_OFS, *data);
 } else {
  if (busnum == 0 && PCI_SLOT(devfn) == 0) {




   *data = GT_READ(GT_PCI0_CFGDATA_OFS);
  } else
   *data = __GT_READ(GT_PCI0_CFGDATA_OFS);
 }


 intr = GT_READ(GT_INTRCAUSE_OFS);

 if (intr & (GT_INTRCAUSE_MASABORT0_BIT | GT_INTRCAUSE_TARABORT0_BIT)) {



  GT_WRITE(GT_INTRCAUSE_OFS, ~(GT_INTRCAUSE_MASABORT0_BIT |
                               GT_INTRCAUSE_TARABORT0_BIT));

  return -1;
 }

 return 0;
}
