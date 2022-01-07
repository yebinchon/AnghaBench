
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_xor_desc_slot {struct mv_xor_desc* hw_desc; } ;
struct mv_xor_desc {scalar_t__ phy_next_desc; } ;



__attribute__((used)) static void mv_desc_clear_next_desc(struct mv_xor_desc_slot *desc)
{
 struct mv_xor_desc *hw_desc = desc->hw_desc;
 hw_desc->phy_next_desc = 0;
}
