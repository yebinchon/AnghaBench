
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dma_ops ;
 int sba_dma_ops ;

void sba_dma_init(void)
{
 dma_ops = &sba_dma_ops;
}
