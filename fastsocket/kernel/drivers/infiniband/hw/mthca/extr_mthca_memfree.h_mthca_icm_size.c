
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_icm_iter {size_t page_idx; TYPE_1__* chunk; } ;
struct TYPE_2__ {int * mem; } ;


 unsigned long sg_dma_len (int *) ;

__attribute__((used)) static inline unsigned long mthca_icm_size(struct mthca_icm_iter *iter)
{
 return sg_dma_len(&iter->chunk->mem[iter->page_idx]);
}
