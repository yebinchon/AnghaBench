
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CSDP (int) ;
 int dma_read (int ) ;
 int dma_write (int,int ) ;

void omap_set_dma_src_data_pack(int lch, int enable)
{
 u32 l;

 l = dma_read(CSDP(lch));
 l &= ~(1 << 6);
 if (enable)
  l |= (1 << 6);
 dma_write(l, CSDP(lch));
}
