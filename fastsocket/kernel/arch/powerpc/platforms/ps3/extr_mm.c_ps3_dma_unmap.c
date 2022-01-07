
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps3_dma_region {TYPE_1__* region_ops; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int (* unmap ) (struct ps3_dma_region*,int ,unsigned long) ;} ;


 int stub1 (struct ps3_dma_region*,int ,unsigned long) ;

int ps3_dma_unmap(struct ps3_dma_region *r, dma_addr_t bus_addr,
 unsigned long len)
{
 return r->region_ops->unmap(r, bus_addr, len);
}
