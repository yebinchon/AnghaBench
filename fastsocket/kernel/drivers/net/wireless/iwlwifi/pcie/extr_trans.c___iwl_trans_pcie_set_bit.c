
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans {int dummy; } ;


 int __iwl_trans_pcie_set_bits_mask (struct iwl_trans*,int ,int ,int ) ;

__attribute__((used)) static inline void __iwl_trans_pcie_set_bit(struct iwl_trans *trans,
         u32 reg, u32 mask)
{
 __iwl_trans_pcie_set_bits_mask(trans, reg, mask, mask);
}
