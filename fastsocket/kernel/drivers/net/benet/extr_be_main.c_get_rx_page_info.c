
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct be_rx_page_info {int last_page_user; int page; } ;
struct be_queue_info {int used; } ;
struct be_rx_obj {struct be_rx_page_info* page_info_tbl; struct be_queue_info q; struct be_adapter* adapter; } ;
struct be_adapter {int big_page_size; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int BUG_ON (int) ;
 int DMA_FROM_DEVICE ;
 int atomic_dec (int *) ;
 int bus ;
 int dma_unmap_page (int *,int ,int ,int ) ;
 int pci_unmap_addr (struct be_rx_page_info*,int ) ;

__attribute__((used)) static struct be_rx_page_info *get_rx_page_info(struct be_rx_obj *rxo,
      u16 frag_idx)
{
 struct be_adapter *adapter = rxo->adapter;
 struct be_rx_page_info *rx_page_info;
 struct be_queue_info *rxq = &rxo->q;

 rx_page_info = &rxo->page_info_tbl[frag_idx];
 BUG_ON(!rx_page_info->page);

 if (rx_page_info->last_page_user) {
  dma_unmap_page(&adapter->pdev->dev,
          pci_unmap_addr(rx_page_info, bus),
          adapter->big_page_size, DMA_FROM_DEVICE);
  rx_page_info->last_page_user = 0;
 }

 atomic_dec(&rxq->used);
 return rx_page_info;
}
