
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct ixgbe_reg_test {scalar_t__ reg; scalar_t__ array_len; int test_type; int write; int mask; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_5__ {scalar_t__ hw_addr; TYPE_1__ mac; } ;
struct ixgbe_adapter {TYPE_2__ hw; } ;


 scalar_t__ IXGBE_READ_REG (TYPE_2__*,int ) ;
 int IXGBE_STATUS ;
 int IXGBE_WRITE_REG (TYPE_2__*,int ,scalar_t__) ;

 int REG_PATTERN_TEST (scalar_t__,int ,int ) ;
 int REG_SET_AND_CHECK (scalar_t__,int ,int ) ;





 int drv ;
 int e_err (int ,char*,scalar_t__,scalar_t__) ;



 struct ixgbe_reg_test* reg_test_82598 ;
 struct ixgbe_reg_test* reg_test_82599 ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int ixgbe_reg_test(struct ixgbe_adapter *adapter, u64 *data)
{
 const struct ixgbe_reg_test *test;
 u32 value, before, after;
 u32 i, toggle;

 switch (adapter->hw.mac.type) {
 case 130:
  toggle = 0x7FFFF3FF;
  test = reg_test_82598;
  break;
 case 129:
 case 128:
  toggle = 0x7FFFF30F;
  test = reg_test_82599;
  break;
 default:
  *data = 1;
  return 1;
  break;
 }







 before = IXGBE_READ_REG(&adapter->hw, IXGBE_STATUS);
 value = (IXGBE_READ_REG(&adapter->hw, IXGBE_STATUS) & toggle);
 IXGBE_WRITE_REG(&adapter->hw, IXGBE_STATUS, toggle);
 after = IXGBE_READ_REG(&adapter->hw, IXGBE_STATUS) & toggle;
 if (value != after) {
  e_err(drv, "failed STATUS register test got: 0x%08X "
        "expected: 0x%08X\n", after, value);
  *data = 1;
  return 1;
 }

 IXGBE_WRITE_REG(&adapter->hw, IXGBE_STATUS, before);





 while (test->reg) {
  for (i = 0; i < test->array_len; i++) {
   switch (test->test_type) {
   case 136:
    REG_PATTERN_TEST(test->reg + (i * 0x40),
       test->mask,
       test->write);
    break;
   case 135:
    REG_SET_AND_CHECK(test->reg + (i * 0x40),
        test->mask,
        test->write);
    break;
   case 131:
    writel(test->write,
           (adapter->hw.hw_addr + test->reg)
           + (i * 0x40));
    break;
   case 134:
    REG_PATTERN_TEST(test->reg + (i * 4),
       test->mask,
       test->write);
    break;
   case 132:
    REG_PATTERN_TEST(test->reg + (i * 8),
       test->mask,
       test->write);
    break;
   case 133:
    REG_PATTERN_TEST((test->reg + 4) + (i * 8),
       test->mask,
       test->write);
    break;
   }
  }
  test++;
 }

 *data = 0;
 return 0;
}
