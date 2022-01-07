
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe_chunk {int dummy; } ;
struct stripe {int region; int sc; } ;
struct TYPE_2__ {int rh; } ;
struct raid_set {scalar_t__ stats; TYPE_1__ recover; } ;
struct page_list {int dummy; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;


 struct stripe_chunk* CHUNK (struct stripe*,int) ;
 struct page_list* PL (struct stripe*,int) ;
 scalar_t__ READ ;
 struct raid_set* RS (int ) ;
 scalar_t__ S_BIOS_ENDIO_READ ;
 scalar_t__ S_BIOS_ENDIO_WRITE ;
 scalar_t__ WRITE ;
 int atomic_inc (scalar_t__) ;
 int bio_copy_page_list (scalar_t__,struct stripe*,struct page_list*,struct bio*) ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_endio (struct bio*,int) ;
 struct bio* bio_list_pop (struct bio_list*) ;
 int chunk_put (struct stripe_chunk*) ;
 int dm_rh_dec (int ,int ) ;
 int io_put (struct raid_set*) ;
 int stripe_put (struct stripe*) ;

__attribute__((used)) static void bio_list_endio(struct stripe *stripe, struct bio_list *bl,
      int p, int error)
{
 struct raid_set *rs = RS(stripe->sc);
 struct bio *bio;
 struct page_list *pl = PL(stripe, p);
 struct stripe_chunk *chunk = CHUNK(stripe, p);


 while ((bio = bio_list_pop(bl))) {
  if (bio_data_dir(bio) == WRITE)

   dm_rh_dec(rs->recover.rh, stripe->region);
  else if (!error)

   bio_copy_page_list(READ, stripe, pl, bio);

  bio_endio(bio, error);


  atomic_inc(rs->stats + (bio_data_dir(bio) == READ ?
      S_BIOS_ENDIO_READ : S_BIOS_ENDIO_WRITE));

  chunk_put(chunk);
  stripe_put(stripe);
  io_put(rs);
 }
}
