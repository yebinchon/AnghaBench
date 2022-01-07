
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps3_dma_region {int dummy; } ;
typedef int dma_addr_t ;



__attribute__((used)) static int dma_sb_unmap_area_linear(struct ps3_dma_region *r,
 dma_addr_t bus_addr, unsigned long len)
{
 return 0;
}
