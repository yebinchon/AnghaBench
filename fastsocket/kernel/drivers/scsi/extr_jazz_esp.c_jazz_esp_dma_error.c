
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct esp {scalar_t__ dma_regs; } ;


 int R4030_ADDR_INTR ;
 int R4030_MEM_INTR ;
 int vdma_get_enable (int) ;

__attribute__((used)) static int jazz_esp_dma_error(struct esp *esp)
{
 u32 enable = vdma_get_enable((int)esp->dma_regs);

 if (enable & (R4030_MEM_INTR|R4030_ADDR_INTR))
  return 1;

 return 0;
}
