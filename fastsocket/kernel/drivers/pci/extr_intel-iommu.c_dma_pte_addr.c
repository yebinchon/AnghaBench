
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct dma_pte {int val; } ;


 int VTD_PAGE_MASK ;
 int __cmpxchg64 (struct dma_pte*,unsigned long long,unsigned long long) ;

__attribute__((used)) static inline u64 dma_pte_addr(struct dma_pte *pte)
{




 return __cmpxchg64(pte, 0ULL, 0ULL) & VTD_PAGE_MASK;

}
