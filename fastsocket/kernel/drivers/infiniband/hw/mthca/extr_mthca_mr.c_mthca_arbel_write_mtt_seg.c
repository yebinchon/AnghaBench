
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct mthca_mtt {scalar_t__ first_seg; } ;
struct TYPE_5__ {int mtt_seg_size; } ;
struct TYPE_4__ {int mtt_table; } ;
struct mthca_dev {TYPE_3__* pdev; TYPE_2__ limits; TYPE_1__ mr_table; } ;
typedef int dma_addr_t ;
typedef int __be64 ;
struct TYPE_6__ {int dev; } ;


 int BUG_ON (int) ;
 int DMA_TO_DEVICE ;
 int MTHCA_MTT_FLAG_PRESENT ;
 int PAGE_SIZE ;
 int cpu_to_be64 (int) ;
 int dma_sync_single_for_cpu (int *,int ,int,int ) ;
 int dma_sync_single_for_device (int *,int ,int,int ) ;
 int * mthca_table_find (int ,scalar_t__,int *) ;

__attribute__((used)) static void mthca_arbel_write_mtt_seg(struct mthca_dev *dev,
          struct mthca_mtt *mtt, int start_index,
          u64 *buffer_list, int list_len)
{
 __be64 *mtts;
 dma_addr_t dma_handle;
 int i;
 int s = start_index * sizeof (u64);


 BUG_ON(s / PAGE_SIZE != (s + list_len * sizeof(u64) - 1) / PAGE_SIZE);

 BUG_ON(s % dev->limits.mtt_seg_size);

 mtts = mthca_table_find(dev->mr_table.mtt_table, mtt->first_seg +
    s / dev->limits.mtt_seg_size, &dma_handle);

 BUG_ON(!mtts);

 dma_sync_single_for_cpu(&dev->pdev->dev, dma_handle,
    list_len * sizeof (u64), DMA_TO_DEVICE);

 for (i = 0; i < list_len; ++i)
  mtts[i] = cpu_to_be64(buffer_list[i] | MTHCA_MTT_FLAG_PRESENT);

 dma_sync_single_for_device(&dev->pdev->dev, dma_handle,
       list_len * sizeof (u64), DMA_TO_DEVICE);
}
