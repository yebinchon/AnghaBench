
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int flags; int flags2; struct e1000_hw hw; } ;


 int E1000_RXDEXT_STATERR_TST ;
 int E1000_TSYNCRXCTL_VALID ;
 int FLAG2_CHECK_RX_HWTSTAMP ;
 int FLAG_HAS_HW_TIMESTAMP ;
 int RXSTMPH ;
 int RXSTMPL ;
 int TSYNCRXCTL ;
 int e1000e_systim_to_hwtstamp (struct e1000_adapter*,int ,int) ;
 int er32 (int ) ;
 int skb_hwtstamps (struct sk_buff*) ;

__attribute__((used)) static void e1000e_rx_hwtstamp(struct e1000_adapter *adapter, u32 status,
          struct sk_buff *skb)
{
 struct e1000_hw *hw = &adapter->hw;
 u64 rxstmp;

 if (!(adapter->flags & FLAG_HAS_HW_TIMESTAMP) ||
     !(status & E1000_RXDEXT_STATERR_TST) ||
     !(er32(TSYNCRXCTL) & E1000_TSYNCRXCTL_VALID))
  return;
 rxstmp = (u64)er32(RXSTMPL);
 rxstmp |= (u64)er32(RXSTMPH) << 32;
 e1000e_systim_to_hwtstamp(adapter, skb_hwtstamps(skb), rxstmp);

 adapter->flags2 &= ~FLAG2_CHECK_RX_HWTSTAMP;
}
