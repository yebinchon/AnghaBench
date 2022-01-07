
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int u32 ;
typedef int u16 ;
struct hfc_multi {scalar_t__ pci_membase; } ;


 scalar_t__ A_FIFO_DATA0 ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int writeb (int ,scalar_t__) ;
 int writel (int ,scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void
write_fifo_pcimem(struct hfc_multi *hc, u_char *data, int len)
{
 while (len>>2) {
  writel(cpu_to_le32(*(u32 *)data),
   hc->pci_membase + A_FIFO_DATA0);
  data += 4;
  len -= 4;
 }
 while (len>>1) {
  writew(cpu_to_le16(*(u16 *)data),
   hc->pci_membase + A_FIFO_DATA0);
  data += 2;
  len -= 2;
 }
 while (len) {
  writeb(*data, hc->pci_membase + A_FIFO_DATA0);
  data++;
  len--;
 }
}
