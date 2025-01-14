
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ hw_addr; } ;
struct ixgbe_adapter {TYPE_1__ hw; } ;


 int ARRAY_SIZE (int const*) ;
 int drv ;
 int e_err (int ,char*,int,int,int const) ;
 int readl (scalar_t__) ;
 int writel (int const,scalar_t__) ;

__attribute__((used)) static bool reg_pattern_test(struct ixgbe_adapter *adapter, u64 *data, int reg,
        u32 mask, u32 write)
{
 u32 pat, val, before;
 static const u32 test_pattern[] = {
  0x5A5A5A5A, 0xA5A5A5A5, 0x00000000, 0xFFFFFFFF};

 for (pat = 0; pat < ARRAY_SIZE(test_pattern); pat++) {
  before = readl(adapter->hw.hw_addr + reg);
  writel((test_pattern[pat] & write),
         (adapter->hw.hw_addr + reg));
  val = readl(adapter->hw.hw_addr + reg);
  if (val != (test_pattern[pat] & write & mask)) {
   e_err(drv, "pattern test reg %04X failed: got "
         "0x%08X expected 0x%08X\n",
         reg, val, (test_pattern[pat] & write & mask));
   *data = reg;
   writel(before, adapter->hw.hw_addr + reg);
   return 1;
  }
  writel(before, adapter->hw.hw_addr + reg);
 }
 return 0;
}
