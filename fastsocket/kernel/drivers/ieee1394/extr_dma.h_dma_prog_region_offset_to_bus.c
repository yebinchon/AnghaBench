
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_prog_region {scalar_t__ bus_addr; } ;
typedef scalar_t__ dma_addr_t ;



__attribute__((used)) static inline dma_addr_t dma_prog_region_offset_to_bus(
  struct dma_prog_region *prog, unsigned long offset)
{
 return prog->bus_addr + offset;
}
