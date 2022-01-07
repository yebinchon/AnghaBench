
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_region_hash {int hash_lock; } ;
struct dm_region {int delayed_bios; } ;
struct bio {int dummy; } ;
typedef int region_t ;


 struct dm_region* __rh_find (struct dm_region_hash*,int ) ;
 int bio_list_add (int *,struct bio*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

void dm_rh_delay_by_region(struct dm_region_hash *rh,
      struct bio *bio, region_t region)
{
 struct dm_region *reg;


 read_lock(&rh->hash_lock);
 reg = __rh_find(rh, region);
 bio_list_add(&reg->delayed_bios, bio);
 read_unlock(&rh->hash_lock);
}
