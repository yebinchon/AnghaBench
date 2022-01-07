
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct skb_shared_hwtstamps {int hwtstamp; } ;
struct sk_buff {int dummy; } ;
struct ixgbe_q_vector {struct ixgbe_adapter* adapter; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int tmreg_lock; int tc; struct ixgbe_hw hw; } ;


 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXSTMPH ;
 int IXGBE_RXSTMPL ;
 int IXGBE_TSYNCRXCTL ;
 int IXGBE_TSYNCRXCTL_VALID ;
 int ns_to_ktime (int) ;
 struct skb_shared_hwtstamps* skb_hwtstamps (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int timecounter_cyc2time (int *,int) ;

void __ixgbe_ptp_rx_hwtstamp(struct ixgbe_q_vector *q_vector,
        struct sk_buff *skb)
{
 struct ixgbe_adapter *adapter;
 struct ixgbe_hw *hw;
 struct skb_shared_hwtstamps *shhwtstamps;
 u64 regval = 0, ns;
 u32 tsyncrxctl;
 unsigned long flags;


 if (!q_vector || !q_vector->adapter)
  return;

 adapter = q_vector->adapter;
 hw = &adapter->hw;





 tsyncrxctl = IXGBE_READ_REG(hw, IXGBE_TSYNCRXCTL);
 if (!(tsyncrxctl & IXGBE_TSYNCRXCTL_VALID))
  return;

 regval |= (u64)IXGBE_READ_REG(hw, IXGBE_RXSTMPL);
 regval |= (u64)IXGBE_READ_REG(hw, IXGBE_RXSTMPH) << 32;


 spin_lock_irqsave(&adapter->tmreg_lock, flags);
 ns = timecounter_cyc2time(&adapter->tc, regval);
 spin_unlock_irqrestore(&adapter->tmreg_lock, flags);

 shhwtstamps = skb_hwtstamps(skb);
 shhwtstamps->hwtstamp = ns_to_ktime(ns);
}
