
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ib_device {int dma_device; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int dma_sync_single_for_device (int ,int ,size_t,int) ;

__attribute__((used)) static void ehca_dma_sync_single_for_device(struct ib_device *dev, u64 addr,
         size_t size,
         enum dma_data_direction dir)
{
 dma_sync_single_for_device(dev->dma_device, addr, size, dir);
}
