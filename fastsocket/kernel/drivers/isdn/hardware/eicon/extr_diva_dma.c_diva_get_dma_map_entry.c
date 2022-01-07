
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _diva_dma_map_entry {void* local_ram_addr; int phys_bus_addr; } ;
typedef int dword ;



void diva_get_dma_map_entry (struct _diva_dma_map_entry* pmap, int nr,
                             void** pvirt, dword* pphys) {
  *pphys = pmap[nr].phys_bus_addr;
  *pvirt = pmap[nr].local_ram_addr;
}
