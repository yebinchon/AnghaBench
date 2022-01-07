
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pte {int dummy; } ;


 unsigned long VTD_PAGE_MASK ;

__attribute__((used)) static inline int first_pte_in_page(struct dma_pte *pte)
{
 return !((unsigned long)pte & ~VTD_PAGE_MASK);
}
