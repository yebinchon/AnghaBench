
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_chunk {int type; unsigned long addr; unsigned long size; } ;



__attribute__((used)) static void mem_chunk_init(struct mem_chunk *chunk, unsigned long addr,
      unsigned long size, int type)
{
 chunk->type = type;
 chunk->addr = addr;
 chunk->size = size;
}
