
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mv_xor_desc_slot {int value; } ;



__attribute__((used)) static void mv_desc_set_block_fill_val(struct mv_xor_desc_slot *desc, u32 val)
{
 desc->value = val;
}
