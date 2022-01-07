
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct e1000_adapter {int hw; } ;


 int __er32 (int *,int) ;
 int __ew32 (int *,int,int) ;
 int e_err (char*,int,int,int) ;

__attribute__((used)) static bool reg_set_and_check(struct e1000_adapter *adapter, u64 *data,
         int reg, u32 mask, u32 write)
{
 u32 val;
 __ew32(&adapter->hw, reg, write & mask);
 val = __er32(&adapter->hw, reg);
 if ((write & mask) != (val & mask)) {
  e_err("set/check test failed (reg 0x%05X): got 0x%08X expected 0x%08X\n",
        reg, (val & mask), (write & mask));
  *data = reg;
  return 1;
 }
 return 0;
}
