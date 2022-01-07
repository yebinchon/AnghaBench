
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int u32 ;
typedef int u16 ;
struct hfc_multi {scalar_t__ pci_membase; } ;


 scalar_t__ A_FIFO_DATA0 ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int readb (scalar_t__) ;
 int readl (scalar_t__) ;
 int readw (scalar_t__) ;

__attribute__((used)) static void
read_fifo_pcimem(struct hfc_multi *hc, u_char *data, int len)
{
 while (len>>2) {
  *(u32 *)data =
   le32_to_cpu(readl(hc->pci_membase + A_FIFO_DATA0));
  data += 4;
  len -= 4;
 }
 while (len>>1) {
  *(u16 *)data =
   le16_to_cpu(readw(hc->pci_membase + A_FIFO_DATA0));
  data += 2;
  len -= 2;
 }
 while (len) {
  *data = readb(hc->pci_membase + A_FIFO_DATA0);
  data++;
  len--;
 }
}
