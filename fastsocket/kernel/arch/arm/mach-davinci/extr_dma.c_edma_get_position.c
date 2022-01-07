
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edmacc_param {int dst; int src; } ;
typedef int dma_addr_t ;


 unsigned int EDMA_CHAN_SLOT (unsigned int) ;
 unsigned int EDMA_CTLR (unsigned int) ;
 int EDMA_CTLR_CHAN (unsigned int,unsigned int) ;
 int edma_read_slot (int ,struct edmacc_param*) ;

void edma_get_position(unsigned slot, dma_addr_t *src, dma_addr_t *dst)
{
 struct edmacc_param temp;
 unsigned ctlr;

 ctlr = EDMA_CTLR(slot);
 slot = EDMA_CHAN_SLOT(slot);

 edma_read_slot(EDMA_CTLR_CHAN(ctlr, slot), &temp);
 if (src != ((void*)0))
  *src = temp.src;
 if (dst != ((void*)0))
  *dst = temp.dst;
}
