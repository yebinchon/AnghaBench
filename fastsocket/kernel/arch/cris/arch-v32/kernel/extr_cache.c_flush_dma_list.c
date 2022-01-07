
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_descr_data {scalar_t__ next; scalar_t__ eol; } ;


 int flush_dma_descr (struct dma_descr_data*,int) ;
 struct dma_descr_data* phys_to_virt (unsigned int) ;

void flush_dma_list(struct dma_descr_data *descr)
{
 while (1) {
  flush_dma_descr(descr, 1);
  if (descr->eol)
   break;
  descr = phys_to_virt((unsigned)descr->next);
 }
}
