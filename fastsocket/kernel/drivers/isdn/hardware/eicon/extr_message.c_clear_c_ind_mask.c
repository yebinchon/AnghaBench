
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t word ;
struct TYPE_3__ {scalar_t__* c_ind_mask_table; } ;
typedef TYPE_1__ PLCI ;


 size_t C_IND_MASK_DWORDS ;

__attribute__((used)) static void clear_c_ind_mask (PLCI *plci)
{
  word i;

  for (i = 0; i < C_IND_MASK_DWORDS; i++)
    plci->c_ind_mask_table[i] = 0;
}
