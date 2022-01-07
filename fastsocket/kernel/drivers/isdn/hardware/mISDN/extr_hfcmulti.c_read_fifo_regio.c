
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int u32 ;
typedef int u16 ;
struct hfc_multi {scalar_t__ pci_iobase; } ;


 int A_FIFO_DATA0 ;
 int inb (scalar_t__) ;
 int inl (scalar_t__) ;
 int inw (scalar_t__) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void
read_fifo_regio(struct hfc_multi *hc, u_char *data, int len)
{
 outb(A_FIFO_DATA0, (hc->pci_iobase)+4);
 while (len>>2) {
  *(u32 *)data = le32_to_cpu(inl(hc->pci_iobase));
  data += 4;
  len -= 4;
 }
 while (len>>1) {
  *(u16 *)data = le16_to_cpu(inw(hc->pci_iobase));
  data += 2;
  len -= 2;
 }
 while (len) {
  *data = inb(hc->pci_iobase);
  data++;
  len--;
 }
}
