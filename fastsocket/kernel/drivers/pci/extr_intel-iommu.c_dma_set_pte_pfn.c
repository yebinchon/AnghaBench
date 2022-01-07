
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct dma_pte {int val; } ;


 int VTD_PAGE_SHIFT ;

__attribute__((used)) static inline void dma_set_pte_pfn(struct dma_pte *pte, unsigned long pfn)
{
 pte->val |= (uint64_t)pfn << VTD_PAGE_SHIFT;
}
