
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_region_hash {int dummy; } ;
struct bio_list {struct bio* head; } ;
struct bio {int bi_rw; struct bio* bi_next; } ;


 int BIO_DISCARD ;
 int BIO_FLUSH ;
 int dm_rh_bio_to_region (struct dm_region_hash*,struct bio*) ;
 int dm_rh_inc (struct dm_region_hash*,int ) ;

void dm_rh_inc_pending(struct dm_region_hash *rh, struct bio_list *bios)
{
 struct bio *bio;

 for (bio = bios->head; bio; bio = bio->bi_next) {
  if (bio->bi_rw & (BIO_FLUSH | BIO_DISCARD))
   continue;
  dm_rh_inc(rh, dm_rh_bio_to_region(rh, bio));
 }
}
