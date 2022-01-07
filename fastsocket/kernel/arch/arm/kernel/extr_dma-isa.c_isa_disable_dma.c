
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dma_t ;


 size_t ISA_DMA_MASK ;
 int ** isa_dma_port ;
 int outb (unsigned int,int ) ;

__attribute__((used)) static void isa_disable_dma(unsigned int chan, dma_t *dma)
{
 outb(chan | 4, isa_dma_port[chan][ISA_DMA_MASK]);
}
