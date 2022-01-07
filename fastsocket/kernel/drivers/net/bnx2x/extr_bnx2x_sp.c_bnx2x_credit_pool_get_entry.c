
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_credit_pool_obj {int base_pool_offset; int * pool_mirror; } ;


 int BIT_VEC64_CLEAR_BIT (int *,int) ;
 int BIT_VEC64_ELEM_SZ ;
 scalar_t__ BIT_VEC64_TEST_BIT (int *,int) ;
 int BNX2X_POOL_VEC_SIZE ;

__attribute__((used)) static bool bnx2x_credit_pool_get_entry(
 struct bnx2x_credit_pool_obj *o,
 int *offset)
{
 int idx, vec, i;

 *offset = -1;


 for (vec = 0; vec < BNX2X_POOL_VEC_SIZE; vec++) {


  if (!o->pool_mirror[vec])
   continue;


  for (idx = vec * BIT_VEC64_ELEM_SZ, i = 0;
        i < BIT_VEC64_ELEM_SZ; idx++, i++)

   if (BIT_VEC64_TEST_BIT(o->pool_mirror, idx)) {

    BIT_VEC64_CLEAR_BIT(o->pool_mirror, idx);
    *offset = o->base_pool_offset + idx;
    return 1;
   }
 }

 return 0;
}
