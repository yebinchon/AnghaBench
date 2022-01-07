
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ixgbe_adv_tx_desc {int dummy; } ixgbe_adv_tx_desc ;
typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct ixgbe_ring {int dma; int count; int state; scalar_t__ atr_sample_rate; scalar_t__ atr_count; TYPE_1__* q_vector; scalar_t__ tail; int reg_idx; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_2__ mac; scalar_t__ hw_addr; } ;
struct ixgbe_adapter {int flags; scalar_t__ atr_sample_rate; struct ixgbe_hw hw; } ;
struct TYPE_3__ {int itr; } ;


 int DMA_BIT_MASK (int) ;
 int IXGBE_FLAG_FDIR_HASH_CAPABLE ;
 scalar_t__ IXGBE_LINKS ;
 int IXGBE_LINKS_UP ;
 int IXGBE_READ_REG (struct ixgbe_hw*,scalar_t__) ;
 scalar_t__ IXGBE_TDBAH (int ) ;
 scalar_t__ IXGBE_TDBAL (int ) ;
 scalar_t__ IXGBE_TDH (int ) ;
 scalar_t__ IXGBE_TDLEN (int ) ;
 scalar_t__ IXGBE_TDT (int ) ;
 scalar_t__ IXGBE_TXDCTL (int ) ;
 int IXGBE_TXDCTL_ENABLE ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,scalar_t__,int) ;
 int __IXGBE_HANG_CHECK_ARMED ;
 int __IXGBE_TX_FDIR_INIT_DONE ;
 int clear_bit (int ,int *) ;
 int drv ;
 int e_err (int ,char*,int ) ;
 scalar_t__ ixgbe_mac_82598EB ;
 int set_bit (int ,int *) ;
 int usleep_range (int,int) ;

void ixgbe_configure_tx_ring(struct ixgbe_adapter *adapter,
        struct ixgbe_ring *ring)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u64 tdba = ring->dma;
 int wait_loop = 10;
 u32 txdctl = IXGBE_TXDCTL_ENABLE;
 u8 reg_idx = ring->reg_idx;


 IXGBE_WRITE_REG(hw, IXGBE_TXDCTL(reg_idx), 0);
 IXGBE_WRITE_FLUSH(hw);

 IXGBE_WRITE_REG(hw, IXGBE_TDBAL(reg_idx),
   (tdba & DMA_BIT_MASK(32)));
 IXGBE_WRITE_REG(hw, IXGBE_TDBAH(reg_idx), (tdba >> 32));
 IXGBE_WRITE_REG(hw, IXGBE_TDLEN(reg_idx),
   ring->count * sizeof(union ixgbe_adv_tx_desc));
 IXGBE_WRITE_REG(hw, IXGBE_TDH(reg_idx), 0);
 IXGBE_WRITE_REG(hw, IXGBE_TDT(reg_idx), 0);
 ring->tail = hw->hw_addr + IXGBE_TDT(reg_idx);
 if (!ring->q_vector || (ring->q_vector->itr < 8))
  txdctl |= (1 << 16);
 else
  txdctl |= (8 << 16);





 txdctl |= (1 << 8) |
     32;


 if (adapter->flags & IXGBE_FLAG_FDIR_HASH_CAPABLE) {
  ring->atr_sample_rate = adapter->atr_sample_rate;
  ring->atr_count = 0;
  set_bit(__IXGBE_TX_FDIR_INIT_DONE, &ring->state);
 } else {
  ring->atr_sample_rate = 0;
 }

 clear_bit(__IXGBE_HANG_CHECK_ARMED, &ring->state);


 IXGBE_WRITE_REG(hw, IXGBE_TXDCTL(reg_idx), txdctl);


 if (hw->mac.type == ixgbe_mac_82598EB &&
     !(IXGBE_READ_REG(hw, IXGBE_LINKS) & IXGBE_LINKS_UP))
  return;


 do {
  usleep_range(1000, 2000);
  txdctl = IXGBE_READ_REG(hw, IXGBE_TXDCTL(reg_idx));
 } while (--wait_loop && !(txdctl & IXGBE_TXDCTL_ENABLE));
 if (!wait_loop)
  e_err(drv, "Could not enable Tx Queue %d\n", reg_idx);
}
