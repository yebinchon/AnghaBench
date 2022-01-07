
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_credit_pool_obj {int base_pool_offset; int pool_sz; int pool_mirror; } ;


 int BIT_VEC64_SET_BIT (int ,int) ;

__attribute__((used)) static bool bnx2x_credit_pool_put_entry(
 struct bnx2x_credit_pool_obj *o,
 int offset)
{
 if (offset < o->base_pool_offset)
  return 0;

 offset -= o->base_pool_offset;

 if (offset >= o->pool_sz)
  return 0;


 BIT_VEC64_SET_BIT(o->pool_mirror, offset);

 return 1;
}
