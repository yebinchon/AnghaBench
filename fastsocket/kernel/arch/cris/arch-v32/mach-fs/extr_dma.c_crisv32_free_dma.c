
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dma_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__* used_dma_channels ;

void crisv32_free_dma(unsigned int dmanr)
{
 spin_lock(&dma_lock);
 used_dma_channels[dmanr] = 0;
 spin_unlock(&dma_lock);
}
