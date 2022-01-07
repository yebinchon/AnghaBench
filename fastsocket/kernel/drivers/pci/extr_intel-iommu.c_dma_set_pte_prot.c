
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pte {int val; } ;



__attribute__((used)) static inline void dma_set_pte_prot(struct dma_pte *pte, unsigned long prot)
{
 pte->val = (pte->val & ~3) | (prot & 3);
}
