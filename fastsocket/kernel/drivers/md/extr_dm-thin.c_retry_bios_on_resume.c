
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int dummy; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;


 int bio_io_error (struct bio*) ;
 int bio_list_init (struct bio_list*) ;
 struct bio* bio_list_pop (struct bio_list*) ;
 int cell_error (struct pool*,struct dm_bio_prison_cell*) ;
 int cell_release (struct pool*,struct dm_bio_prison_cell*,struct bio_list*) ;
 int retry_on_resume (struct bio*) ;
 scalar_t__ should_error_unserviceable_bio (struct pool*) ;

__attribute__((used)) static void retry_bios_on_resume(struct pool *pool, struct dm_bio_prison_cell *cell)
{
 struct bio *bio;
 struct bio_list bios;

 if (should_error_unserviceable_bio(pool)) {
  cell_error(pool, cell);
  return;
 }

 bio_list_init(&bios);
 cell_release(pool, cell, &bios);

 if (should_error_unserviceable_bio(pool))
  while ((bio = bio_list_pop(&bios)))
   bio_io_error(bio);
 else
  while ((bio = bio_list_pop(&bios)))
   retry_on_resume(bio);
}
