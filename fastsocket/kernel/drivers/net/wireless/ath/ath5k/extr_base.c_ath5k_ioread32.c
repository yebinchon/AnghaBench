
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath5k_hw {int dummy; } ;


 unsigned int ath5k_hw_reg_read (struct ath5k_hw*,int ) ;

__attribute__((used)) static unsigned int ath5k_ioread32(void *hw_priv, u32 reg_offset)
{
 struct ath5k_hw *ah = (struct ath5k_hw *) hw_priv;
 return ath5k_hw_reg_read(ah, reg_offset);
}
