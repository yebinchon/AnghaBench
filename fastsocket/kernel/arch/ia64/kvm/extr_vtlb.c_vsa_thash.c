
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ia64_pta {int size; int base; } ;
typedef int u64 ;
struct thash_data {int dummy; } ;


 int PTA_BASE_SHIFT ;
 int REGION_OFFSET (int) ;
 int _REGION_ID (int) ;
 int _REGION_PAGE_SIZE (int) ;

struct thash_data *vsa_thash(union ia64_pta vpta, u64 va, u64 vrr, u64 *tag)
{
 u64 index, pfn, rid, pfn_bits;

 pfn_bits = vpta.size - 5 - 8;
 pfn = REGION_OFFSET(va) >> _REGION_PAGE_SIZE(vrr);
 rid = _REGION_ID(vrr);
 index = ((rid & 0xff) << pfn_bits)|(pfn & ((1UL << pfn_bits) - 1));
 *tag = ((rid >> 8) & 0xffff) | ((pfn >> pfn_bits) << 16);

 return (struct thash_data *)((vpta.base << PTA_BASE_SHIFT) +
    (index << 5));
}
