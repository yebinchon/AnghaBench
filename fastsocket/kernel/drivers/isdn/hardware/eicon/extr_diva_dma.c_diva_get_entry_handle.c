
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _diva_dma_map_entry {void* addr_handle; } ;



void* diva_get_entry_handle (struct _diva_dma_map_entry* pmap, int nr) {
  return (pmap[nr].addr_handle);
}
