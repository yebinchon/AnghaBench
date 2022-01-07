
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct i2o_controller {scalar_t__ pae_support; TYPE_1__* pdev; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
typedef int dma_addr_t ;
struct TYPE_2__ {int dev; } ;




 size_t PAGE_SIZE ;
 void* cpu_to_le32 (size_t) ;
 int dma_map_single (int *,void*,size_t,int) ;
 int dma_mapping_error (int *,int ) ;
 size_t i2o_dma_high (int ) ;
 size_t i2o_dma_low (int ) ;

dma_addr_t i2o_dma_map_single(struct i2o_controller *c, void *ptr,
         size_t size,
         enum dma_data_direction direction,
         u32 ** sg_ptr)
{
 u32 sg_flags;
 u32 *mptr = *sg_ptr;
 dma_addr_t dma_addr;

 switch (direction) {
 case 128:
  sg_flags = 0xd4000000;
  break;
 case 129:
  sg_flags = 0xd0000000;
  break;
 default:
  return 0;
 }

 dma_addr = dma_map_single(&c->pdev->dev, ptr, size, direction);
 if (!dma_mapping_error(&c->pdev->dev, dma_addr)) {







  *mptr++ = cpu_to_le32(sg_flags | size);
  *mptr++ = cpu_to_le32(i2o_dma_low(dma_addr));




  *sg_ptr = mptr;
 }
 return dma_addr;
}
