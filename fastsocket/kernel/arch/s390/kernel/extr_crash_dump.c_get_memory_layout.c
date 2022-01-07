
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_chunk {int dummy; } ;


 int CHUNK_CRASHK ;
 int MEMORY_CHUNKS ;
 int OLDMEM_BASE ;
 int OLDMEM_SIZE ;
 int create_mem_hole (struct mem_chunk*,int ,int ,int ) ;
 int detect_memory_layout (struct mem_chunk*) ;
 struct mem_chunk* kzalloc_panic (int) ;

__attribute__((used)) static struct mem_chunk *get_memory_layout(void)
{
 struct mem_chunk *chunk_array;

 chunk_array = kzalloc_panic(MEMORY_CHUNKS * sizeof(struct mem_chunk));
 detect_memory_layout(chunk_array);
 create_mem_hole(chunk_array, OLDMEM_BASE, OLDMEM_SIZE, CHUNK_CRASHK);
 return chunk_array;
}
