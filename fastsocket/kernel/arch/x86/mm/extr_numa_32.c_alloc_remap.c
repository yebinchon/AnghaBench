
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ALIGN (unsigned long,int ) ;
 int L1_CACHE_BYTES ;
 int memset (void*,int ,unsigned long) ;
 void** node_remap_alloc_vaddr ;
 void** node_remap_end_vaddr ;

void *alloc_remap(int nid, unsigned long size)
{
 void *allocation = node_remap_alloc_vaddr[nid];

 size = ALIGN(size, L1_CACHE_BYTES);

 if (!allocation || (allocation + size) >= node_remap_end_vaddr[nid])
  return ((void*)0);

 node_remap_alloc_vaddr[nid] += size;
 memset(allocation, 0, size);

 return allocation;
}
