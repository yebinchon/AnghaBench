
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ll_disk {int dummy; } ;
typedef int dm_block_t ;


 int sm_ll_lookup_big_ref_count (struct ll_disk*,int ,int*) ;
 int sm_ll_lookup_bitmap (struct ll_disk*,int ,int*) ;

int sm_ll_lookup(struct ll_disk *ll, dm_block_t b, uint32_t *result)
{
 int r = sm_ll_lookup_bitmap(ll, b, result);

 if (r)
  return r;

 if (*result != 3)
  return r;

 return sm_ll_lookup_big_ref_count(ll, b, result);
}
