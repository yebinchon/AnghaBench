
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct e1000_ring {int itr_val; int ims_val; scalar_t__ itr_register; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {scalar_t__ hw_addr; TYPE_1__ mac; } ;
struct e1000_adapter {int eiac_mask; struct e1000_ring* tx_ring; struct e1000_ring* rx_ring; struct e1000_hw hw; } ;


 int CTRL_EXT ;
 int E1000_CTRL_EXT_EIAME ;
 int E1000_CTRL_EXT_PBA_CLR ;
 int E1000_EIAC_MASK_82574 ;
 scalar_t__ E1000_EITR_82574 (int) ;
 int E1000_IMS_OTHER ;
 int E1000_IMS_RXQ0 ;
 int E1000_IMS_TXQ0 ;
 int E1000_IVAR_INT_ALLOC_VALID ;
 int E1000_RFCTL_ACK_DIS ;
 int IAM ;
 int IVAR ;
 int RFCTL ;
 scalar_t__ e1000_82574 ;
 int e1e_flush () ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void e1000_configure_msix(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 struct e1000_ring *rx_ring = adapter->rx_ring;
 struct e1000_ring *tx_ring = adapter->tx_ring;
 int vector = 0;
 u32 ctrl_ext, ivar = 0;

 adapter->eiac_mask = 0;


 if (hw->mac.type == e1000_82574) {
  u32 rfctl = er32(RFCTL);
  rfctl |= E1000_RFCTL_ACK_DIS;
  ew32(RFCTL, rfctl);
 }


 rx_ring->ims_val = E1000_IMS_RXQ0;
 adapter->eiac_mask |= rx_ring->ims_val;
 if (rx_ring->itr_val)
  writel(1000000000 / (rx_ring->itr_val * 256),
         rx_ring->itr_register);
 else
  writel(1, rx_ring->itr_register);
 ivar = E1000_IVAR_INT_ALLOC_VALID | vector;


 tx_ring->ims_val = E1000_IMS_TXQ0;
 vector++;
 if (tx_ring->itr_val)
  writel(1000000000 / (tx_ring->itr_val * 256),
         tx_ring->itr_register);
 else
  writel(1, tx_ring->itr_register);
 adapter->eiac_mask |= tx_ring->ims_val;
 ivar |= ((E1000_IVAR_INT_ALLOC_VALID | vector) << 8);


 vector++;
 ivar |= ((E1000_IVAR_INT_ALLOC_VALID | vector) << 16);
 if (rx_ring->itr_val)
  writel(1000000000 / (rx_ring->itr_val * 256),
         hw->hw_addr + E1000_EITR_82574(vector));
 else
  writel(1, hw->hw_addr + E1000_EITR_82574(vector));


 ivar |= (1 << 31);

 ew32(IVAR, ivar);


 ctrl_ext = er32(CTRL_EXT);
 ctrl_ext |= E1000_CTRL_EXT_PBA_CLR;


 ew32(IAM, ~E1000_EIAC_MASK_82574 | E1000_IMS_OTHER);
 ctrl_ext |= E1000_CTRL_EXT_EIAME;
 ew32(CTRL_EXT, ctrl_ext);
 e1e_flush();
}
