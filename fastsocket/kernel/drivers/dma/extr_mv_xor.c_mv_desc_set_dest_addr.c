
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_xor_desc_slot {struct mv_xor_desc* hw_desc; } ;
struct mv_xor_desc {int phy_dest_addr; } ;
typedef int dma_addr_t ;



__attribute__((used)) static void mv_desc_set_dest_addr(struct mv_xor_desc_slot *desc,
      dma_addr_t addr)
{
 struct mv_xor_desc *hw_desc = desc->hw_desc;
 hw_desc->phy_dest_addr = addr;
}
