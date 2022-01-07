
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fore200e {TYPE_1__* bus; } ;
struct chunk {int alloc_size; int align_size; int direction; int * align_addr; int dma_addr; int * alloc_addr; } ;
struct TYPE_2__ {int (* dma_map ) (struct fore200e*,int *,int,int) ;} ;


 int ENOMEM ;
 unsigned long FORE200E_ALIGN (int *,int) ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int * kzalloc (int,int) ;
 int stub1 (struct fore200e*,int *,int,int) ;

__attribute__((used)) static int
fore200e_chunk_alloc(struct fore200e* fore200e, struct chunk* chunk, int size, int alignment, int direction)
{
    unsigned long offset = 0;

    if (alignment <= sizeof(int))
 alignment = 0;

    chunk->alloc_size = size + alignment;
    chunk->align_size = size;
    chunk->direction = direction;

    chunk->alloc_addr = kzalloc(chunk->alloc_size, GFP_KERNEL | GFP_DMA);
    if (chunk->alloc_addr == ((void*)0))
 return -ENOMEM;

    if (alignment > 0)
 offset = FORE200E_ALIGN(chunk->alloc_addr, alignment);

    chunk->align_addr = chunk->alloc_addr + offset;

    chunk->dma_addr = fore200e->bus->dma_map(fore200e, chunk->align_addr, chunk->align_size, direction);

    return 0;
}
