
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t word ;
typedef int byte ;
struct TYPE_3__ {scalar_t__* c_ind_mask_table; } ;
typedef TYPE_1__ PLCI ;


 size_t C_IND_MASK_DWORDS ;

__attribute__((used)) static byte c_ind_mask_empty (PLCI *plci)
{
  word i;

  i = 0;
  while ((i < C_IND_MASK_DWORDS) && (plci->c_ind_mask_table[i] == 0))
    i++;
  return (i == C_IND_MASK_DWORDS);
}
