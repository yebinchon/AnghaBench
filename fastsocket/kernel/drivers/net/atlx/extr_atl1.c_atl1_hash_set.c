
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl1_hw {scalar_t__ hw_addr; } ;


 scalar_t__ REG_RX_HASH_TABLE ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;

void atl1_hash_set(struct atl1_hw *hw, u32 hash_value)
{
 u32 hash_bit, hash_reg;
 u32 mta;
 hash_reg = (hash_value >> 31) & 0x1;
 hash_bit = (hash_value >> 26) & 0x1F;
 mta = ioread32((hw->hw_addr + REG_RX_HASH_TABLE) + (hash_reg << 2));
 mta |= (1 << hash_bit);
 iowrite32(mta, (hw->hw_addr + REG_RX_HASH_TABLE) + (hash_reg << 2));
}
