
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DMA_BUS_MODE ;
 int pr_err (char*,int,scalar_t__,int ) ;
 int pr_info (char*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static void gmac_dump_dma_regs(unsigned long ioaddr)
{
 int i;
 pr_info(" DMA registers\n");
 for (i = 0; i < 22; i++) {
  if ((i < 9) || (i > 17)) {
   int offset = i * 4;
   pr_err("\t Reg No. %d (offset 0x%x): 0x%08x\n", i,
          (DMA_BUS_MODE + offset),
          readl(ioaddr + DMA_BUS_MODE + offset));
  }
 }
 return;
}
