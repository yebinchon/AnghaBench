
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _diva_dma_map_entry {int dummy; } ;


 int diva_os_free (int ,struct _diva_dma_map_entry*) ;

void diva_free_dma_mapping (struct _diva_dma_map_entry* pmap) {
  if (pmap) {
    diva_os_free (0, pmap);
  }
}
