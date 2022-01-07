
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_channel {int dummy; } ;


 int ETIMEDOUT ;
 int SH4A_PCIEPHYSR ;
 scalar_t__ pci_read_reg (struct pci_channel*,int ) ;
 int phy_write_reg (struct pci_channel*,int,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int phy_init(struct pci_channel *chan)
{
 unsigned int timeout = 100;


 phy_write_reg(chan, 0x60, 0xf, 0x004b008b);
 phy_write_reg(chan, 0x61, 0xf, 0x00007b41);
 phy_write_reg(chan, 0x64, 0xf, 0x00ff4f00);
 phy_write_reg(chan, 0x65, 0xf, 0x09070907);
 phy_write_reg(chan, 0x66, 0xf, 0x00000010);
 phy_write_reg(chan, 0x74, 0xf, 0x0007001c);
 phy_write_reg(chan, 0x79, 0xf, 0x01fc000d);


 phy_write_reg(chan, 0x67, 0xf, 0x00000400);

 while (timeout--) {
  if (pci_read_reg(chan, SH4A_PCIEPHYSR))
   return 0;

  udelay(100);
 }

 return -ETIMEDOUT;
}
