
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_pte {scalar_t__ val; } ;



__attribute__((used)) static inline void dma_clear_pte(struct dma_pte *pte)
{
 pte->val = 0;
}
