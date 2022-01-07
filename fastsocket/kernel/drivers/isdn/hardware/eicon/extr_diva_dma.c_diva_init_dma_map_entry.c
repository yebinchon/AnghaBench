
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _diva_dma_map_entry {void* addr_handle; void* local_ram_addr; int phys_bus_addr; } ;
typedef int dword ;



void diva_init_dma_map_entry (struct _diva_dma_map_entry* pmap,
                              int nr, void* virt, dword phys,
                              void* addr_handle) {
  pmap[nr].phys_bus_addr = phys;
  pmap[nr].local_ram_addr = virt;
  pmap[nr].addr_handle = addr_handle;
}
