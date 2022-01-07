
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int u32 ;
typedef int u16 ;
struct hfc_multi {scalar_t__ pci_iobase; } ;


 int A_FIFO_DATA0 ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int outb (int ,scalar_t__) ;
 int outl (int ,scalar_t__) ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static void
write_fifo_regio(struct hfc_multi *hc, u_char *data, int len)
{
 outb(A_FIFO_DATA0, (hc->pci_iobase)+4);
 while (len>>2) {
  outl(cpu_to_le32(*(u32 *)data), hc->pci_iobase);
  data += 4;
  len -= 4;
 }
 while (len>>1) {
  outw(cpu_to_le16(*(u16 *)data), hc->pci_iobase);
  data += 2;
  len -= 2;
 }
 while (len) {
  outb(*data, hc->pci_iobase);
  data++;
  len--;
 }
}
