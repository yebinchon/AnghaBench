
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pte {int val; } ;


 int DMA_PTE_READ ;

__attribute__((used)) static inline void dma_set_pte_readable(struct dma_pte *pte)
{
 pte->val |= DMA_PTE_READ;
}
