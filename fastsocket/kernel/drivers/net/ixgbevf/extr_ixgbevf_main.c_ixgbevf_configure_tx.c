
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
typedef int u64 ;
typedef size_t u32 ;
struct ixgbevf_ring {size_t reg_idx; int dma; int count; void* tail; void* head; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {size_t num_tx_queues; struct ixgbevf_ring* tx_ring; struct ixgbe_hw hw; } ;


 int DMA_BIT_MASK (int) ;
 size_t IXGBE_DCA_TXCTRL_TX_WB_RO_EN ;
 size_t IXGBE_READ_REG (struct ixgbe_hw*,void*) ;
 void* IXGBE_VFDCA_TXCTRL (size_t) ;
 void* IXGBE_VFTDBAH (size_t) ;
 void* IXGBE_VFTDBAL (size_t) ;
 void* IXGBE_VFTDH (size_t) ;
 void* IXGBE_VFTDLEN (size_t) ;
 void* IXGBE_VFTDT (size_t) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,void*,size_t) ;

__attribute__((used)) static void ixgbevf_configure_tx(struct ixgbevf_adapter *adapter)
{
 u64 tdba;
 struct ixgbe_hw *hw = &adapter->hw;
 u32 i, j, tdlen, txctrl;


 for (i = 0; i < adapter->num_tx_queues; i++) {
  struct ixgbevf_ring *ring = &adapter->tx_ring[i];
  j = ring->reg_idx;
  tdba = ring->dma;
  tdlen = ring->count * sizeof(union ixgbe_adv_tx_desc);
  IXGBE_WRITE_REG(hw, IXGBE_VFTDBAL(j),
    (tdba & DMA_BIT_MASK(32)));
  IXGBE_WRITE_REG(hw, IXGBE_VFTDBAH(j), (tdba >> 32));
  IXGBE_WRITE_REG(hw, IXGBE_VFTDLEN(j), tdlen);
  IXGBE_WRITE_REG(hw, IXGBE_VFTDH(j), 0);
  IXGBE_WRITE_REG(hw, IXGBE_VFTDT(j), 0);
  adapter->tx_ring[i].head = IXGBE_VFTDH(j);
  adapter->tx_ring[i].tail = IXGBE_VFTDT(j);



  txctrl = IXGBE_READ_REG(hw, IXGBE_VFDCA_TXCTRL(j));
  txctrl &= ~IXGBE_DCA_TXCTRL_TX_WB_RO_EN;
  IXGBE_WRITE_REG(hw, IXGBE_VFDCA_TXCTRL(j), txctrl);
 }
}
