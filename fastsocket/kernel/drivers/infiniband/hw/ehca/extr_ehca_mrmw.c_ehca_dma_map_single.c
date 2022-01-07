
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ib_device {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int EHCA_INVAL_ADDR ;
 int ehca_map_vaddr (void*) ;

__attribute__((used)) static u64 ehca_dma_map_single(struct ib_device *dev, void *cpu_addr,
          size_t size, enum dma_data_direction direction)
{
 if (cpu_addr)
  return ehca_map_vaddr(cpu_addr);
 else
  return EHCA_INVAL_ADDR;
}
