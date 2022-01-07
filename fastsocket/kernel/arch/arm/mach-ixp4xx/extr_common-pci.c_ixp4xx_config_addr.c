
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int BIT (int) ;
 int PCI_FUNC (int ) ;
 int PCI_SLOT (int ) ;

__attribute__((used)) static u32 ixp4xx_config_addr(u8 bus_num, u16 devfn, int where)
{
 u32 addr;
 if (!bus_num) {

  addr = BIT(32-PCI_SLOT(devfn)) | ((PCI_FUNC(devfn)) << 8) |
      (where & ~3);
 } else {

  addr = (bus_num << 16) | ((PCI_SLOT(devfn)) << 11) |
   ((PCI_FUNC(devfn)) << 8) | (where & ~3) | 1;
 }
 return addr;
}
