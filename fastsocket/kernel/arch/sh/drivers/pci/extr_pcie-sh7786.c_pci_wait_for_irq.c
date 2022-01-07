
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_channel {int dummy; } ;


 int ETIMEDOUT ;
 int SH4A_PCIEINTR ;
 unsigned int pci_read_reg (struct pci_channel*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int pci_wait_for_irq(struct pci_channel *chan, unsigned int mask)
{
 unsigned int timeout = 100;

 while (timeout--) {
  if ((pci_read_reg(chan, SH4A_PCIEINTR) & mask) == mask)
   return 0;

  udelay(100);
 }

 return -ETIMEDOUT;
}
