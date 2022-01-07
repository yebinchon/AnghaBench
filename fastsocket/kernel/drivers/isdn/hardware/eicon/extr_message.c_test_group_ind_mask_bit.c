
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int word ;
typedef int byte ;
struct TYPE_3__ {long* group_optimization_mask_table; } ;
typedef TYPE_1__ PLCI ;



__attribute__((used)) static byte test_group_ind_mask_bit (PLCI *plci, word b)
{
  return ((plci->group_optimization_mask_table[b >> 5] & (1L << (b & 0x1f))) != 0);
}
