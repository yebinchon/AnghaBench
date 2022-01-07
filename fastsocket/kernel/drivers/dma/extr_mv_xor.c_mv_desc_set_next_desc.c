
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_xor_desc_slot {struct mv_xor_desc* hw_desc; } ;
struct mv_xor_desc {int phy_next_desc; } ;


 int BUG_ON (int ) ;

__attribute__((used)) static void mv_desc_set_next_desc(struct mv_xor_desc_slot *desc,
      u32 next_desc_addr)
{
 struct mv_xor_desc *hw_desc = desc->hw_desc;
 BUG_ON(hw_desc->phy_next_desc);
 hw_desc->phy_next_desc = next_desc_addr;
}
