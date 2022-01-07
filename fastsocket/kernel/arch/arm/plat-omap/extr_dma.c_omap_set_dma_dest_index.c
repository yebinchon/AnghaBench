
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDEI (int) ;
 int CDFI (int) ;
 scalar_t__ cpu_class_is_omap2 () ;
 int dma_write (int,int ) ;

void omap_set_dma_dest_index(int lch, int eidx, int fidx)
{
 if (cpu_class_is_omap2())
  return;

 dma_write(eidx, CDEI(lch));
 dma_write(fidx, CDFI(lch));
}
