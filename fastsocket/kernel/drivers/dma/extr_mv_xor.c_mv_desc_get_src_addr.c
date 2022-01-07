
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_xor_desc_slot {struct mv_xor_desc* hw_desc; } ;
struct mv_xor_desc {int * phy_src_addr; } ;



__attribute__((used)) static u32 mv_desc_get_src_addr(struct mv_xor_desc_slot *desc,
    int src_idx)
{
 struct mv_xor_desc *hw_desc = desc->hw_desc;
 return hw_desc->phy_src_addr[src_idx];
}
