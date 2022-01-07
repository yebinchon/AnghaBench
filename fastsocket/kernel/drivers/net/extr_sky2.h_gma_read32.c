
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sky2_hw {int dummy; } ;


 unsigned int SK_GMAC_REG (unsigned int,unsigned int) ;
 scalar_t__ sky2_read16 (struct sky2_hw*,unsigned int) ;

__attribute__((used)) static inline u32 gma_read32(struct sky2_hw *hw, unsigned port, unsigned reg)
{
 unsigned base = SK_GMAC_REG(port, reg);
 return (u32) sky2_read16(hw, base)
  | (u32) sky2_read16(hw, base+4) << 16;
}
