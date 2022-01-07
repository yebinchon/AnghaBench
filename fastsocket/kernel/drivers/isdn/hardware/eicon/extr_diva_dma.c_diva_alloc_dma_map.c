
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _diva_dma_map_entry {int dummy; } ;
typedef struct _diva_dma_map_entry diva_dma_map_entry_t ;


 struct _diva_dma_map_entry* diva_os_malloc (int ,int) ;
 int memset (struct _diva_dma_map_entry*,int ,int) ;

struct _diva_dma_map_entry* diva_alloc_dma_map (void* os_context, int nentries) {
  diva_dma_map_entry_t* pmap = diva_os_malloc(0, sizeof(*pmap)*(nentries+1));
  if (pmap)
   memset (pmap, 0, sizeof(*pmap)*(nentries+1));
  return pmap;
}
