
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct skb_shared_hwtstamps {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int * ptp_tx_skb; struct e1000_hw hw; } ;


 int E1000_TXSTMPH ;
 int E1000_TXSTMPL ;
 int dev_kfree_skb_any (int *) ;
 int igb_ptp_systim_to_hwtstamp (struct igb_adapter*,struct skb_shared_hwtstamps*,int) ;
 int rd32 (int ) ;
 int skb_tstamp_tx (int *,struct skb_shared_hwtstamps*) ;

void igb_ptp_tx_hwtstamp(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 struct skb_shared_hwtstamps shhwtstamps;
 u64 regval;

 regval = rd32(E1000_TXSTMPL);
 regval |= (u64)rd32(E1000_TXSTMPH) << 32;

 igb_ptp_systim_to_hwtstamp(adapter, &shhwtstamps, regval);
 skb_tstamp_tx(adapter->ptp_tx_skb, &shhwtstamps);
 dev_kfree_skb_any(adapter->ptp_tx_skb);
 adapter->ptp_tx_skb = ((void*)0);
}
