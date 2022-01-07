
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CSEI (int) ;
 int CSFI (int) ;
 scalar_t__ cpu_class_is_omap2 () ;
 int dma_write (int,int ) ;

void omap_set_dma_src_index(int lch, int eidx, int fidx)
{
 if (cpu_class_is_omap2())
  return;

 dma_write(eidx, CSEI(lch));
 dma_write(fidx, CSFI(lch));
}
