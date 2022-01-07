
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pte {int val; } ;



__attribute__((used)) static inline bool dma_pte_present(struct dma_pte *pte)
{
 return (pte->val & 3) != 0;
}
