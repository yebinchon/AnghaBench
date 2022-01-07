
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mwl8k_priv {scalar_t__ pending_tx_pkts; scalar_t__ radio_on; int fw_mutex; int * hostcmd_wait; scalar_t__ regs; int watchdog_ba_handle; int watchdog_event_pending; int poll_rx_task; int poll_tx_task; } ;
struct ieee80211_hw {struct mwl8k_priv* priv; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int MWL8K_A2H_INT_BA_WATCHDOG ;
 int MWL8K_A2H_INT_OPC_DONE ;
 int MWL8K_A2H_INT_QUEUE_EMPTY ;
 int MWL8K_A2H_INT_RX_READY ;
 int MWL8K_A2H_INT_TX_DONE ;
 scalar_t__ MWL8K_HIU_A2H_INTERRUPT_STATUS ;
 scalar_t__ MWL8K_HIU_A2H_INTERRUPT_STATUS_MASK ;
 int atomic_inc (int *) ;
 int complete (int *) ;
 int ieee80211_queue_work (struct ieee80211_hw*,int *) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int mutex_is_locked (int *) ;
 int mwl8k_tx_start (struct mwl8k_priv*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t mwl8k_interrupt(int irq, void *dev_id)
{
 struct ieee80211_hw *hw = dev_id;
 struct mwl8k_priv *priv = hw->priv;
 u32 status;

 status = ioread32(priv->regs + MWL8K_HIU_A2H_INTERRUPT_STATUS);
 if (!status)
  return IRQ_NONE;

 if (status & MWL8K_A2H_INT_TX_DONE) {
  status &= ~MWL8K_A2H_INT_TX_DONE;
  tasklet_schedule(&priv->poll_tx_task);
 }

 if (status & MWL8K_A2H_INT_RX_READY) {
  status &= ~MWL8K_A2H_INT_RX_READY;
  tasklet_schedule(&priv->poll_rx_task);
 }

 if (status & MWL8K_A2H_INT_BA_WATCHDOG) {
  iowrite32(~MWL8K_A2H_INT_BA_WATCHDOG,
     priv->regs + MWL8K_HIU_A2H_INTERRUPT_STATUS_MASK);

  atomic_inc(&priv->watchdog_event_pending);
  status &= ~MWL8K_A2H_INT_BA_WATCHDOG;
  ieee80211_queue_work(hw, &priv->watchdog_ba_handle);
 }

 if (status)
  iowrite32(~status, priv->regs + MWL8K_HIU_A2H_INTERRUPT_STATUS);

 if (status & MWL8K_A2H_INT_OPC_DONE) {
  if (priv->hostcmd_wait != ((void*)0))
   complete(priv->hostcmd_wait);
 }

 if (status & MWL8K_A2H_INT_QUEUE_EMPTY) {
  if (!mutex_is_locked(&priv->fw_mutex) &&
      priv->radio_on && priv->pending_tx_pkts)
   mwl8k_tx_start(priv);
 }

 return IRQ_HANDLED;
}
