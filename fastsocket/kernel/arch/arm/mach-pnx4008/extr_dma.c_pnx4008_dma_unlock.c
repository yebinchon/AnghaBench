
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dma_lock ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static inline void pnx4008_dma_unlock(void)
{
 spin_unlock_irq(&dma_lock);
}
