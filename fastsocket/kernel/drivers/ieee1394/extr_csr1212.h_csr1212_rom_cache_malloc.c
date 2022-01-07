
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct csr1212_csr_rom_cache {size_t size; int * ext_rom; int offset; int * layout_tail; int * layout_head; int * filled_tail; int * filled_head; int * prev; int * next; } ;


 struct csr1212_csr_rom_cache* CSR1212_MALLOC (int) ;

__attribute__((used)) static inline struct csr1212_csr_rom_cache *
csr1212_rom_cache_malloc(u32 offset, size_t size)
{
 struct csr1212_csr_rom_cache *cache;

 cache = CSR1212_MALLOC(sizeof(*cache) + size);
 if (!cache)
  return ((void*)0);

 cache->next = ((void*)0);
 cache->prev = ((void*)0);
 cache->filled_head = ((void*)0);
 cache->filled_tail = ((void*)0);
 cache->layout_head = ((void*)0);
 cache->layout_tail = ((void*)0);
 cache->offset = offset;
 cache->size = size;
 cache->ext_rom = ((void*)0);

 return cache;
}
