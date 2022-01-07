
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8169_private {TYPE_1__* pci_dev; } ;
struct RxDesc {int addr; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int kfree (void*) ;
 int le64_to_cpu (int ) ;
 int rtl8169_make_unusable_by_asic (struct RxDesc*) ;
 int rx_buf_sz ;

__attribute__((used)) static void rtl8169_free_rx_databuff(struct rtl8169_private *tp,
         void **data_buff, struct RxDesc *desc)
{
 dma_unmap_single(&tp->pci_dev->dev, le64_to_cpu(desc->addr), rx_buf_sz,
    DMA_FROM_DEVICE);

 kfree(*data_buff);
 *data_buff = ((void*)0);
 rtl8169_make_unusable_by_asic(desc);
}
