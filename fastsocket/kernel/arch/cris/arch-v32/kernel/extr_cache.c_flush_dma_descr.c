
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_descr_data {scalar_t__ buf; scalar_t__ after; } ;


 int cris_flush_cache_range (int ,unsigned int) ;
 int phys_to_virt (unsigned int) ;

inline void flush_dma_descr(struct dma_descr_data *descr, int flush_buf)
{

 asm volatile ("ftagd [%0]" :: "r" (descr));

 if (flush_buf)
  cris_flush_cache_range(phys_to_virt((unsigned)descr->buf),
    (unsigned)(descr->after - descr->buf));
}
