
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sk_buff {int dummy; } ;
struct igb_q_vector {struct igb_adapter* adapter; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {struct e1000_hw hw; } ;


 int E1000_RXSTMPH ;
 int E1000_RXSTMPL ;
 int E1000_TSYNCRXCTL ;
 int E1000_TSYNCRXCTL_VALID ;
 int igb_ptp_systim_to_hwtstamp (struct igb_adapter*,int ,int) ;
 int rd32 (int ) ;
 int skb_hwtstamps (struct sk_buff*) ;

void igb_ptp_rx_rgtstamp(struct igb_q_vector *q_vector,
    struct sk_buff *skb)
{
 struct igb_adapter *adapter = q_vector->adapter;
 struct e1000_hw *hw = &adapter->hw;
 u64 regval;
 if (!(rd32(E1000_TSYNCRXCTL) & E1000_TSYNCRXCTL_VALID))
  return;

 regval = rd32(E1000_RXSTMPL);
 regval |= (u64)rd32(E1000_RXSTMPH) << 32;

 igb_ptp_systim_to_hwtstamp(adapter, skb_hwtstamps(skb), regval);
}
