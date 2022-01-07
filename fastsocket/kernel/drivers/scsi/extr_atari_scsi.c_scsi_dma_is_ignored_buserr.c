
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long addr; unsigned long size; } ;


 unsigned long SCSI_DMA_READ_P (int ) ;
 int dma_addr ;
 TYPE_1__* m68k_memory ;
 int m68k_num_memory ;

__attribute__((used)) static int scsi_dma_is_ignored_buserr(unsigned char dma_stat)
{
 int i;
 unsigned long addr = SCSI_DMA_READ_P(dma_addr), end_addr;

 if (dma_stat & 0x01) {






  for (i = 0; i < m68k_num_memory; ++i) {
   end_addr = m68k_memory[i].addr + m68k_memory[i].size;
   if (end_addr <= addr && addr <= end_addr + 4)
    return 1;
  }
 }
 return 0;
}
