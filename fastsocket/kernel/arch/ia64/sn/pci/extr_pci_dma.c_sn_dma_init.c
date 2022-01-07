
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dma_ops ;
 int sn_dma_ops ;

void sn_dma_init(void)
{
 dma_ops = &sn_dma_ops;
}
