
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int DMA_MemMap_t ;


 int dma_map_add_region (int *,void*,size_t) ;
 int dma_map_start (int *,int) ;
 int dma_unmap (int *,int ) ;

int dma_map_mem(DMA_MemMap_t *memMap,
  void *mem,
  size_t numBytes,
  enum dma_data_direction dir
    ) {
 int rc;

 rc = dma_map_start(memMap, dir);
 if (rc == 0) {
  rc = dma_map_add_region(memMap, mem, numBytes);
  if (rc < 0) {



   dma_unmap(memMap, 0);
  }
 }

 return rc;
}
