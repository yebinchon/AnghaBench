
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_region_hash {scalar_t__ target_begin; } ;
struct bio {scalar_t__ bi_sector; } ;
typedef int region_t ;


 int dm_rh_sector_to_region (struct dm_region_hash*,scalar_t__) ;

region_t dm_rh_bio_to_region(struct dm_region_hash *rh, struct bio *bio)
{
 return dm_rh_sector_to_region(rh, bio->bi_sector - rh->target_begin);
}
