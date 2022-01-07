
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgb_hw {int dummy; } ;


 int IXGB_READ_REG_ARRAY (struct ixgb_hw*,int ,int) ;
 int IXGB_WRITE_REG_ARRAY (struct ixgb_hw*,int ,int,int) ;
 int MTA ;

__attribute__((used)) static void
ixgb_mta_set(struct ixgb_hw *hw,
    u32 hash_value)
{
 u32 hash_bit, hash_reg;
 u32 mta_reg;
 hash_reg = (hash_value >> 5) & 0x7F;
 hash_bit = hash_value & 0x1F;

 mta_reg = IXGB_READ_REG_ARRAY(hw, MTA, hash_reg);

 mta_reg |= (1 << hash_bit);

 IXGB_WRITE_REG_ARRAY(hw, MTA, hash_reg, mta_reg);

 return;
}
