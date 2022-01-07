
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_xor_desc_slot {scalar_t__ type; struct mv_xor_desc* hw_desc; } ;
struct mv_xor_desc {int desc_command; int * phy_src_addr; } ;
typedef int dma_addr_t ;


 scalar_t__ DMA_XOR ;

__attribute__((used)) static void mv_desc_set_src_addr(struct mv_xor_desc_slot *desc,
     int index, dma_addr_t addr)
{
 struct mv_xor_desc *hw_desc = desc->hw_desc;
 hw_desc->phy_src_addr[index] = addr;
 if (desc->type == DMA_XOR)
  hw_desc->desc_command |= (1 << index);
}
