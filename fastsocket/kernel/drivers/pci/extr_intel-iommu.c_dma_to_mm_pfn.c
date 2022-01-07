
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_SHIFT ;
 unsigned long VTD_PAGE_SHIFT ;

__attribute__((used)) static inline unsigned long dma_to_mm_pfn(unsigned long dma_pfn)
{
 return dma_pfn >> (PAGE_SHIFT - VTD_PAGE_SHIFT);
}
