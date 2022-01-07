
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int mta_reg_count; } ;
struct e1000_hw {TYPE_1__ mac; } ;


 int E1000_MTA ;
 int array_rd32 (int ,int) ;
 int array_wr32 (int ,int,int) ;
 int wrfl () ;

void igb_mta_set(struct e1000_hw *hw, u32 hash_value)
{
 u32 hash_bit, hash_reg, mta;
 hash_reg = (hash_value >> 5) & (hw->mac.mta_reg_count - 1);
 hash_bit = hash_value & 0x1F;

 mta = array_rd32(E1000_MTA, hash_reg);

 mta |= (1 << hash_bit);

 array_wr32(E1000_MTA, hash_reg, mta);
 wrfl();
}
