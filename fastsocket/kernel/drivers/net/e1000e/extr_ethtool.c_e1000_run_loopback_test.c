
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dev; } ;
struct e1000_ring {int count; TYPE_1__* buffer_info; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; struct pci_dev* pdev; struct e1000_ring test_rx_ring; struct e1000_ring test_tx_ring; } ;
struct TYPE_2__ {int skb; int dma; int length; } ;


 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int RDT (int ) ;
 int TDT (int ) ;
 int dma_sync_single_for_cpu (int *,int ,int,int ) ;
 int dma_sync_single_for_device (int *,int ,int ,int ) ;
 int e1000_check_lbtest_frame (int ,int) ;
 int e1000_create_lbtest_frame (int ,int) ;
 int e1e_flush () ;
 int ew32 (int ,int) ;
 unsigned long jiffies ;
 int msleep (int) ;
 int time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int e1000_run_loopback_test(struct e1000_adapter *adapter)
{
 struct e1000_ring *tx_ring = &adapter->test_tx_ring;
 struct e1000_ring *rx_ring = &adapter->test_rx_ring;
 struct pci_dev *pdev = adapter->pdev;
 struct e1000_hw *hw = &adapter->hw;
 int i, j, k, l;
 int lc;
 int good_cnt;
 int ret_val = 0;
 unsigned long time;

 ew32(RDT(0), rx_ring->count - 1);






 if (rx_ring->count <= tx_ring->count)
  lc = ((tx_ring->count / 64) * 2) + 1;
 else
  lc = ((rx_ring->count / 64) * 2) + 1;

 k = 0;
 l = 0;

 for (j = 0; j <= lc; j++) {

  for (i = 0; i < 64; i++) {
   e1000_create_lbtest_frame(tx_ring->buffer_info[k].skb,
        1024);
   dma_sync_single_for_device(&pdev->dev,
     tx_ring->buffer_info[k].dma,
     tx_ring->buffer_info[k].length,
     DMA_TO_DEVICE);
   k++;
   if (k == tx_ring->count)
    k = 0;
  }
  ew32(TDT(0), k);
  e1e_flush();
  msleep(200);
  time = jiffies;
  good_cnt = 0;

  do {
   dma_sync_single_for_cpu(&pdev->dev,
     rx_ring->buffer_info[l].dma, 2048,
     DMA_FROM_DEVICE);

   ret_val = e1000_check_lbtest_frame(
     rx_ring->buffer_info[l].skb, 1024);
   if (!ret_val)
    good_cnt++;
   l++;
   if (l == rx_ring->count)
    l = 0;




  } while ((good_cnt < 64) && !time_after(jiffies, time + 20));
  if (good_cnt != 64) {
   ret_val = 13;
   break;
  }
  if (jiffies >= (time + 20)) {
   ret_val = 14;
   break;
  }
 }
 return ret_val;
}
