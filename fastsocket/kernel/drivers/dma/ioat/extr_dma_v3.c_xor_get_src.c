
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_raw_descriptor {int * field; } ;
typedef int dma_addr_t ;


 int xor_idx_to_desc ;
 size_t* xor_idx_to_field ;

__attribute__((used)) static dma_addr_t xor_get_src(struct ioat_raw_descriptor *descs[2], int idx)
{
 struct ioat_raw_descriptor *raw = descs[xor_idx_to_desc >> idx & 1];

 return raw->field[xor_idx_to_field[idx]];
}
