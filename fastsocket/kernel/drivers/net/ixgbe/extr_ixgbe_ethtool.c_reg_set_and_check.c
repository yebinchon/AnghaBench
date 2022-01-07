
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ hw_addr; } ;
struct ixgbe_adapter {TYPE_1__ hw; } ;


 int drv ;
 int e_err (int ,char*,int,int,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static bool reg_set_and_check(struct ixgbe_adapter *adapter, u64 *data, int reg,
         u32 mask, u32 write)
{
 u32 val, before;
 before = readl(adapter->hw.hw_addr + reg);
 writel((write & mask), (adapter->hw.hw_addr + reg));
 val = readl(adapter->hw.hw_addr + reg);
 if ((write & mask) != (val & mask)) {
  e_err(drv, "set/check reg %04X test failed: got 0x%08X "
        "expected 0x%08X\n", reg, (val & mask), (write & mask));
  *data = reg;
  writel(before, (adapter->hw.hw_addr + reg));
  return 1;
 }
 writel(before, (adapter->hw.hw_addr + reg));
 return 0;
}
