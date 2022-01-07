
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int SC1200_REV_B1 ;
 int inb (int) ;
 int inw (int) ;

__attribute__((used)) static int sc1200_clock(void)
{

 u8 chip_id = inb(0x903C);
 u8 silicon_rev = inb(0x903D);
 u16 pci_clock;

 if (chip_id == 0x04 && silicon_rev < SC1200_REV_B1)
  return 0;




 pci_clock = inw(0x901E);
 pci_clock >>= 8;
 pci_clock &= 0x03;
 if (pci_clock == 3)
  pci_clock = 0;
 return pci_clock;
}
