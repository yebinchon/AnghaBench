
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct skge_port {int napi; } ;
struct skge_hw {int intr_mask; int hw_lock; TYPE_2__** dev; int phy_task; } ;
typedef int irqreturn_t ;
struct TYPE_3__ {int rx_over_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int B0_IMSK ;
 int B0_SP_ISRC ;
 int B3_PA_CTRL ;
 int IRQ_RETVAL (int) ;
 int IS_EXT_REG ;
 int IS_HW_ERR ;
 int IS_MAC1 ;
 int IS_MAC2 ;
 int IS_PA_TO_RX1 ;
 int IS_PA_TO_RX2 ;
 int IS_PA_TO_TX1 ;
 int IS_PA_TO_TX2 ;
 int IS_R1_F ;
 int IS_R2_F ;
 int IS_XA1_F ;
 int IS_XA2_F ;
 int PA_CLR_TO_RX1 ;
 int PA_CLR_TO_RX2 ;
 int PA_CLR_TO_TX1 ;
 int PA_CLR_TO_TX2 ;
 int napi_schedule (int *) ;
 struct skge_port* netdev_priv (TYPE_2__*) ;
 int skge_error_irq (struct skge_hw*) ;
 int skge_mac_intr (struct skge_hw*,int) ;
 int skge_read32 (struct skge_hw*,int ) ;
 int skge_write16 (struct skge_hw*,int ,int ) ;
 int skge_write32 (struct skge_hw*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t skge_intr(int irq, void *dev_id)
{
 struct skge_hw *hw = dev_id;
 u32 status;
 int handled = 0;

 spin_lock(&hw->hw_lock);

 status = skge_read32(hw, B0_SP_ISRC);
 if (status == 0 || status == ~0)
  goto out;

 handled = 1;
 status &= hw->intr_mask;
 if (status & IS_EXT_REG) {
  hw->intr_mask &= ~IS_EXT_REG;
  tasklet_schedule(&hw->phy_task);
 }

 if (status & (IS_XA1_F|IS_R1_F)) {
  struct skge_port *skge = netdev_priv(hw->dev[0]);
  hw->intr_mask &= ~(IS_XA1_F|IS_R1_F);
  napi_schedule(&skge->napi);
 }

 if (status & IS_PA_TO_TX1)
  skge_write16(hw, B3_PA_CTRL, PA_CLR_TO_TX1);

 if (status & IS_PA_TO_RX1) {
  ++hw->dev[0]->stats.rx_over_errors;
  skge_write16(hw, B3_PA_CTRL, PA_CLR_TO_RX1);
 }


 if (status & IS_MAC1)
  skge_mac_intr(hw, 0);

 if (hw->dev[1]) {
  struct skge_port *skge = netdev_priv(hw->dev[1]);

  if (status & (IS_XA2_F|IS_R2_F)) {
   hw->intr_mask &= ~(IS_XA2_F|IS_R2_F);
   napi_schedule(&skge->napi);
  }

  if (status & IS_PA_TO_RX2) {
   ++hw->dev[1]->stats.rx_over_errors;
   skge_write16(hw, B3_PA_CTRL, PA_CLR_TO_RX2);
  }

  if (status & IS_PA_TO_TX2)
   skge_write16(hw, B3_PA_CTRL, PA_CLR_TO_TX2);

  if (status & IS_MAC2)
   skge_mac_intr(hw, 1);
 }

 if (status & IS_HW_ERR)
  skge_error_irq(hw);

 skge_write32(hw, B0_IMSK, hw->intr_mask);
 skge_read32(hw, B0_IMSK);
out:
 spin_unlock(&hw->hw_lock);

 return IRQ_RETVAL(handled);
}
