
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {void* va; } ;
struct be_queue_info {int entry_size; TYPE_1__ dma_mem; } ;



__attribute__((used)) static inline void *queue_index_node(struct be_queue_info *q, u16 index)
{
 return q->dma_mem.va + index * q->entry_size;
}
