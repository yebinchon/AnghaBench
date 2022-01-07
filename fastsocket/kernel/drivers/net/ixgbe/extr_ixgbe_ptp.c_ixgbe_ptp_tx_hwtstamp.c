
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int * ptp_tx_skb; int tmreg_lock; int tc; struct ixgbe_hw hw; } ;
typedef int shhwtstamps ;


 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_TXSTMPH ;
 int IXGBE_TXSTMPL ;
 int dev_kfree_skb_any (int *) ;
 int memset (struct skb_shared_hwtstamps*,int ,int) ;
 int ns_to_ktime (int) ;
 int skb_tstamp_tx (int *,struct skb_shared_hwtstamps*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timecounter_cyc2time (int *,int) ;

__attribute__((used)) static void ixgbe_ptp_tx_hwtstamp(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 struct skb_shared_hwtstamps shhwtstamps;
 u64 regval = 0, ns;
 unsigned long flags;

 regval |= (u64)IXGBE_READ_REG(hw, IXGBE_TXSTMPL);
 regval |= (u64)IXGBE_READ_REG(hw, IXGBE_TXSTMPH) << 32;

 spin_lock_irqsave(&adapter->tmreg_lock, flags);
 ns = timecounter_cyc2time(&adapter->tc, regval);
 spin_unlock_irqrestore(&adapter->tmreg_lock, flags);

 memset(&shhwtstamps, 0, sizeof(shhwtstamps));
 shhwtstamps.hwtstamp = ns_to_ktime(ns);
 skb_tstamp_tx(adapter->ptp_tx_skb, &shhwtstamps);

 dev_kfree_skb_any(adapter->ptp_tx_skb);
 adapter->ptp_tx_skb = ((void*)0);
}
