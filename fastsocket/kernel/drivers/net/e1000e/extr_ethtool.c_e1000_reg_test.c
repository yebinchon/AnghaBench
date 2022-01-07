
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct e1000_mac_info {int type; int rar_entry_count; int mta_reg_count; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;
struct e1000_adapter {int flags; struct e1000_hw hw; } ;


 int E1000_FCAH ;
 int E1000_FCAL ;
 int E1000_FCRTH ;
 int E1000_FCT ;
 int E1000_FCTTV ;
 int E1000_FWSM_WLOCK_MAC_MASK ;
 int E1000_FWSM_WLOCK_MAC_SHIFT ;
 int E1000_MTA ;
 int E1000_RA ;
 int E1000_RCTL ;
 int E1000_RDBAH (int ) ;
 int E1000_RDBAL (int ) ;
 int E1000_RDH (int ) ;
 int E1000_RDLEN (int ) ;
 int E1000_RDT (int ) ;
 int E1000_RDTR ;
 int E1000_TCTL ;
 int E1000_TDBAH (int ) ;
 int E1000_TDBAL (int ) ;
 int E1000_TDLEN (int ) ;
 int E1000_TIDV ;
 int E1000_TIPG ;
 int E1000_TXCW ;
 int E1000_VET ;
 int FLAG_IS_ICH ;
 int FWSM ;
 int REG_PATTERN_TEST (int ,int,int) ;
 int REG_PATTERN_TEST_ARRAY (int ,int,int,int) ;
 int REG_SET_AND_CHECK (int ,int,int) ;
 int STATUS ;







 int e_err (char*,int,int) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static int e1000_reg_test(struct e1000_adapter *adapter, u64 *data)
{
 struct e1000_hw *hw = &adapter->hw;
 struct e1000_mac_info *mac = &adapter->hw.mac;
 u32 value;
 u32 before;
 u32 after;
 u32 i;
 u32 toggle;
 u32 mask;
 u32 wlock_mac = 0;





 switch (mac->type) {
 case 133:
 case 132:
 case 134:
  toggle = 0x7FFFF3FF;
  break;
 default:
  toggle = 0x7FFFF033;
  break;
 }

 before = er32(STATUS);
 value = (er32(STATUS) & toggle);
 ew32(STATUS, toggle);
 after = er32(STATUS) & toggle;
 if (value != after) {
  e_err("failed STATUS register test got: 0x%08X expected: 0x%08X\n",
        after, value);
  *data = 1;
  return 1;
 }

 ew32(STATUS, before);

 if (!(adapter->flags & FLAG_IS_ICH)) {
  REG_PATTERN_TEST(E1000_FCAL, 0xFFFFFFFF, 0xFFFFFFFF);
  REG_PATTERN_TEST(E1000_FCAH, 0x0000FFFF, 0xFFFFFFFF);
  REG_PATTERN_TEST(E1000_FCT, 0x0000FFFF, 0xFFFFFFFF);
  REG_PATTERN_TEST(E1000_VET, 0x0000FFFF, 0xFFFFFFFF);
 }

 REG_PATTERN_TEST(E1000_RDTR, 0x0000FFFF, 0xFFFFFFFF);
 REG_PATTERN_TEST(E1000_RDBAH(0), 0xFFFFFFFF, 0xFFFFFFFF);
 REG_PATTERN_TEST(E1000_RDLEN(0), 0x000FFF80, 0x000FFFFF);
 REG_PATTERN_TEST(E1000_RDH(0), 0x0000FFFF, 0x0000FFFF);
 REG_PATTERN_TEST(E1000_RDT(0), 0x0000FFFF, 0x0000FFFF);
 REG_PATTERN_TEST(E1000_FCRTH, 0x0000FFF8, 0x0000FFF8);
 REG_PATTERN_TEST(E1000_FCTTV, 0x0000FFFF, 0x0000FFFF);
 REG_PATTERN_TEST(E1000_TIPG, 0x3FFFFFFF, 0x3FFFFFFF);
 REG_PATTERN_TEST(E1000_TDBAH(0), 0xFFFFFFFF, 0xFFFFFFFF);
 REG_PATTERN_TEST(E1000_TDLEN(0), 0x000FFF80, 0x000FFFFF);

 REG_SET_AND_CHECK(E1000_RCTL, 0xFFFFFFFF, 0x00000000);

 before = ((adapter->flags & FLAG_IS_ICH) ? 0x06C3B33E : 0x06DFB3FE);
 REG_SET_AND_CHECK(E1000_RCTL, before, 0x003FFFFB);
 REG_SET_AND_CHECK(E1000_TCTL, 0xFFFFFFFF, 0x00000000);

 REG_SET_AND_CHECK(E1000_RCTL, before, 0xFFFFFFFF);
 REG_PATTERN_TEST(E1000_RDBAL(0), 0xFFFFFFF0, 0xFFFFFFFF);
 if (!(adapter->flags & FLAG_IS_ICH))
  REG_PATTERN_TEST(E1000_TXCW, 0xC000FFFF, 0x0000FFFF);
 REG_PATTERN_TEST(E1000_TDBAL(0), 0xFFFFFFF0, 0xFFFFFFFF);
 REG_PATTERN_TEST(E1000_TIDV, 0x0000FFFF, 0x0000FFFF);
 mask = 0x8003FFFF;
 switch (mac->type) {
 case 131:
 case 128:
 case 130:
 case 129:
  mask |= (1 << 18);
  break;
 default:
  break;
 }

 if (mac->type == 129)
  wlock_mac = (er32(FWSM) & E1000_FWSM_WLOCK_MAC_MASK) >>
      E1000_FWSM_WLOCK_MAC_SHIFT;

 for (i = 0; i < mac->rar_entry_count; i++) {
  if (mac->type == 129) {

   if ((wlock_mac == 1) || (wlock_mac && (i > wlock_mac)))
    continue;


   if (i == 10)
    mask |= (1 << 30);
   else
    mask &= ~(1 << 30);
  }

  REG_PATTERN_TEST_ARRAY(E1000_RA, ((i << 1) + 1), mask,
           0xFFFFFFFF);
 }

 for (i = 0; i < mac->mta_reg_count; i++)
  REG_PATTERN_TEST_ARRAY(E1000_MTA, i, 0xFFFFFFFF, 0xFFFFFFFF);

 *data = 0;

 return 0;
}
