
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfc_multi {scalar_t__ pci_iobase; } ;
typedef int __u32 ;


 int outl (unsigned int,scalar_t__) ;
 int outw (unsigned short,scalar_t__) ;

inline void
writepcibridge(struct hfc_multi *hc, unsigned char address, unsigned char data)
{
 unsigned short cipv;
 unsigned int datav;

 if (!hc->pci_iobase)
  return;

 if (address == 0)
  cipv = 0x4000;
 else
  cipv = 0x5800;


 outw(cipv, hc->pci_iobase + 4);

 datav = data | ((__u32) data << 8) | ((__u32) data << 16) |
     ((__u32) data << 24);
 outl(datav, hc->pci_iobase);
}
