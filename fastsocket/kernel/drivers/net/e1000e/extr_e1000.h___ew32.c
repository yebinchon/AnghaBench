
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct e1000_hw {scalar_t__ hw_addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int flags2; } ;


 int FLAG2_PCIM2PCI_ARBITER_WA ;
 int __ew32_prepare (struct e1000_hw*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void __ew32(struct e1000_hw *hw, unsigned long reg, u32 val)
{
 if (hw->adapter->flags2 & FLAG2_PCIM2PCI_ARBITER_WA)
  __ew32_prepare(hw);

 writel(val, hw->hw_addr + reg);
}
