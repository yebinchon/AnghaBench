
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fore200e {TYPE_1__* bus; } ;
struct chunk {int alloc_addr; int direction; int dma_size; int dma_addr; } ;
struct TYPE_2__ {int (* dma_unmap ) (struct fore200e*,int ,int ,int ) ;} ;


 int kfree (int ) ;
 int stub1 (struct fore200e*,int ,int ,int ) ;

__attribute__((used)) static void
fore200e_chunk_free(struct fore200e* fore200e, struct chunk* chunk)
{
    fore200e->bus->dma_unmap(fore200e, chunk->dma_addr, chunk->dma_size, chunk->direction);

    kfree(chunk->alloc_addr);
}
