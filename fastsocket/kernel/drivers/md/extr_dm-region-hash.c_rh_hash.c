
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_region_hash {int prime; int shift; unsigned int mask; } ;
typedef int region_t ;



__attribute__((used)) static unsigned rh_hash(struct dm_region_hash *rh, region_t region)
{
 return (unsigned) ((region * rh->prime) >> rh->shift) & rh->mask;
}
