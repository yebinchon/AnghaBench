
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dma_addr_t ;


 int CPC (int) ;
 int CSAC (int) ;
 int CSSA_U (int) ;
 scalar_t__ cpu_class_is_omap1 () ;
 scalar_t__ cpu_is_omap15xx () ;
 int dma_read (int ) ;

dma_addr_t omap_get_dma_src_pos(int lch)
{
 dma_addr_t offset = 0;

 if (cpu_is_omap15xx())
  offset = dma_read(CPC(lch));
 else
  offset = dma_read(CSAC(lch));





 if (!cpu_is_omap15xx() && offset == 0)
  offset = dma_read(CSAC(lch));

 if (cpu_class_is_omap1())
  offset |= (dma_read(CSSA_U(lch)) << 16);

 return offset;
}
