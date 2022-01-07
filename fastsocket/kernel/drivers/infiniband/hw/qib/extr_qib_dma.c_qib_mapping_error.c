
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ib_device {int dummy; } ;


 scalar_t__ BAD_DMA_ADDRESS ;

__attribute__((used)) static int qib_mapping_error(struct ib_device *dev, u64 dma_addr)
{
 return dma_addr == BAD_DMA_ADDRESS;
}
