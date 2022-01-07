
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CCR (int) ;
 int CDEI (int) ;
 int CDFI (int) ;
 int CDSA (int) ;
 int CDSA_L (int) ;
 int CDSA_U (int) ;
 int CSDP (int) ;
 scalar_t__ cpu_class_is_omap1 () ;
 scalar_t__ cpu_class_is_omap2 () ;
 int dma_read (int ) ;
 int dma_write (int,int ) ;

void omap_set_dma_dest_params(int lch, int dest_port, int dest_amode,
         unsigned long dest_start,
         int dst_ei, int dst_fi)
{
 u32 l;

 if (cpu_class_is_omap1()) {
  l = dma_read(CSDP(lch));
  l &= ~(0x1f << 9);
  l |= dest_port << 9;
  dma_write(l, CSDP(lch));
 }

 l = dma_read(CCR(lch));
 l &= ~(0x03 << 14);
 l |= dest_amode << 14;
 dma_write(l, CCR(lch));

 if (cpu_class_is_omap1()) {
  dma_write(dest_start >> 16, CDSA_U(lch));
  dma_write(dest_start, CDSA_L(lch));
 }

 if (cpu_class_is_omap2())
  dma_write(dest_start, CDSA(lch));

 dma_write(dst_ei, CDEI(lch));
 dma_write(dst_fi, CDFI(lch));
}
