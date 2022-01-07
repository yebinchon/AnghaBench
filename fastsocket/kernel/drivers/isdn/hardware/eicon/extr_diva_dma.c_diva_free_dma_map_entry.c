
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _diva_dma_map_entry {scalar_t__ busy; } ;



void diva_free_dma_map_entry (struct _diva_dma_map_entry* pmap, int nr) {
  pmap[nr].busy = 0;
}
