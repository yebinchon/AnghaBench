
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_region_hash {int hash_lock; } ;
struct dm_region {int dummy; } ;
typedef int region_t ;


 struct dm_region* __rh_alloc (struct dm_region_hash*,int ) ;
 struct dm_region* __rh_lookup (struct dm_region_hash*,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static struct dm_region *__rh_find(struct dm_region_hash *rh, region_t region)
{
 struct dm_region *reg;

 reg = __rh_lookup(rh, region);
 if (!reg) {
  read_unlock(&rh->hash_lock);
  reg = __rh_alloc(rh, region);
  read_lock(&rh->hash_lock);
 }

 return reg;
}
