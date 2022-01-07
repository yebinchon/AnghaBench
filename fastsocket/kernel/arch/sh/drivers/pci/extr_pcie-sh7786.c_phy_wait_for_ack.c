
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_channel {int dummy; } ;


 int BITS_ACK ;
 int ETIMEDOUT ;
 int SH4A_PCIEPHYADRR ;
 int pci_read_reg (struct pci_channel*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int phy_wait_for_ack(struct pci_channel *chan)
{
 unsigned int timeout = 100;

 while (timeout--) {
  if (pci_read_reg(chan, SH4A_PCIEPHYADRR) & (1 << BITS_ACK))
   return 0;

  udelay(100);
 }

 return -ETIMEDOUT;
}
