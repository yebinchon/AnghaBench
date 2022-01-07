
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct e1000_tx_ring {int count; TYPE_1__* buffer_info; } ;
struct e1000_rx_ring {int count; TYPE_2__* buffer_info; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct pci_dev* pdev; struct e1000_rx_ring test_rx_ring; struct e1000_tx_ring test_tx_ring; struct e1000_hw hw; } ;
struct TYPE_4__ {int skb; int length; int dma; } ;
struct TYPE_3__ {int length; int dma; int skb; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int E1000_WRITE_FLUSH () ;
 int RDT ;
 int TDT ;
 int dma_sync_single_for_cpu (int *,int ,int ,int ) ;
 int dma_sync_single_for_device (int *,int ,int ,int ) ;
 int e1000_check_lbtest_frame (int ,int) ;
 int e1000_create_lbtest_frame (int ,int) ;
 int ew32 (int ,int) ;
 unsigned long jiffies ;
 int msleep (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int e1000_run_loopback_test(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 struct e1000_tx_ring *txdr = &adapter->test_tx_ring;
 struct e1000_rx_ring *rxdr = &adapter->test_rx_ring;
 struct pci_dev *pdev = adapter->pdev;
 int i, j, k, l, lc, good_cnt, ret_val=0;
 unsigned long time;

 ew32(RDT, rxdr->count - 1);






 if (rxdr->count <= txdr->count)
  lc = ((txdr->count / 64) * 2) + 1;
 else
  lc = ((rxdr->count / 64) * 2) + 1;

 k = l = 0;
 for (j = 0; j <= lc; j++) {
  for (i = 0; i < 64; i++) {
   e1000_create_lbtest_frame(txdr->buffer_info[i].skb,
     1024);
   dma_sync_single_for_device(&pdev->dev,
         txdr->buffer_info[k].dma,
         txdr->buffer_info[k].length,
         DMA_TO_DEVICE);
   if (unlikely(++k == txdr->count)) k = 0;
  }
  ew32(TDT, k);
  E1000_WRITE_FLUSH();
  msleep(200);
  time = jiffies;
  good_cnt = 0;
  do {
   dma_sync_single_for_cpu(&pdev->dev,
      rxdr->buffer_info[l].dma,
      rxdr->buffer_info[l].length,
      DMA_FROM_DEVICE);

   ret_val = e1000_check_lbtest_frame(
     rxdr->buffer_info[l].skb,
        1024);
   if (!ret_val)
    good_cnt++;
   if (unlikely(++l == rxdr->count)) l = 0;




  } while (good_cnt < 64 && jiffies < (time + 20));
  if (good_cnt != 64) {
   ret_val = 13;
   break;
  }
  if (jiffies >= (time + 2)) {
   ret_val = 14;
   break;
  }
 }
 return ret_val;
}
