
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_ring {int tail; struct e1000_adapter* adapter; } ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int reset_task; struct e1000_hw hw; } ;
typedef int s32 ;


 int E1000_RCTL_EN ;
 int RCTL ;
 int __ew32_prepare (struct e1000_hw*) ;
 int e_err (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 unsigned int readl (int ) ;
 int schedule_work (int *) ;
 scalar_t__ unlikely (int) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static void e1000e_update_rdt_wa(struct e1000_ring *rx_ring, unsigned int i)
{
 struct e1000_adapter *adapter = rx_ring->adapter;
 struct e1000_hw *hw = &adapter->hw;
 s32 ret_val = __ew32_prepare(hw);

 writel(i, rx_ring->tail);

 if (unlikely(!ret_val && (i != readl(rx_ring->tail)))) {
  u32 rctl = er32(RCTL);
  ew32(RCTL, rctl & ~E1000_RCTL_EN);
  e_err("ME firmware caused invalid RDT - resetting\n");
  schedule_work(&adapter->reset_task);
 }
}
