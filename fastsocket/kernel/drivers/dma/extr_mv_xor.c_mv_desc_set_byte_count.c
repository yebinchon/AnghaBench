
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_xor_desc_slot {struct mv_xor_desc* hw_desc; } ;
struct mv_xor_desc {int byte_count; } ;



__attribute__((used)) static void mv_desc_set_byte_count(struct mv_xor_desc_slot *desc,
       u32 byte_count)
{
 struct mv_xor_desc *hw_desc = desc->hw_desc;
 hw_desc->byte_count = byte_count;
}
