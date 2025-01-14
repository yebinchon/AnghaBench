
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ioat_raw_descriptor {scalar_t__* field; } ;
typedef scalar_t__ dma_addr_t ;


 int xor_idx_to_desc ;
 size_t* xor_idx_to_field ;

__attribute__((used)) static void xor_set_src(struct ioat_raw_descriptor *descs[2],
   dma_addr_t addr, u32 offset, int idx)
{
 struct ioat_raw_descriptor *raw = descs[xor_idx_to_desc >> idx & 1];

 raw->field[xor_idx_to_field[idx]] = addr + offset;
}
