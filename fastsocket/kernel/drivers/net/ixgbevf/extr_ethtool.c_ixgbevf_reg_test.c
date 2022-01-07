
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct ixgbevf_reg_test {scalar_t__ reg; scalar_t__ array_len; int test_type; int write; int mask; } ;
struct TYPE_2__ {scalar_t__ hw_addr; } ;
struct ixgbevf_adapter {TYPE_1__ hw; } ;



 int REG_PATTERN_TEST (scalar_t__,int ,int ) ;
 int REG_SET_AND_CHECK (scalar_t__,int ,int ) ;





 struct ixgbevf_reg_test* reg_test_vf ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int ixgbevf_reg_test(struct ixgbevf_adapter *adapter, u64 *data)
{
 const struct ixgbevf_reg_test *test;
 u32 i;

 test = reg_test_vf;





 while (test->reg) {
  for (i = 0; i < test->array_len; i++) {
   switch (test->test_type) {
   case 133:
    REG_PATTERN_TEST(test->reg + (i * 0x40),
      test->mask,
      test->write);
    break;
   case 132:
    REG_SET_AND_CHECK(test->reg + (i * 0x40),
      test->mask,
      test->write);
    break;
   case 128:
    writel(test->write,
           (adapter->hw.hw_addr + test->reg)
           + (i * 0x40));
    break;
   case 131:
    REG_PATTERN_TEST(test->reg + (i * 4),
      test->mask,
      test->write);
    break;
   case 129:
    REG_PATTERN_TEST(test->reg + (i * 8),
      test->mask,
      test->write);
    break;
   case 130:
    REG_PATTERN_TEST((test->reg + 4) + (i * 8),
      test->mask,
      test->write);
    break;
   }
  }
  test++;
 }

 *data = 0;
 return *data;
}
