
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* va; } ;
struct be_queue_info {int head; int entry_size; TYPE_1__ dma_mem; } ;



__attribute__((used)) static inline void *queue_head_node(struct be_queue_info *q)
{
 return q->dma_mem.va + q->head * q->entry_size;
}
