
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe {int region; } ;
struct TYPE_2__ {int rh; } ;
struct raid_set {scalar_t__ stats; TYPE_1__ recover; } ;
struct raid_address {int di; } ;
struct bio_list {int dummy; } ;
struct bio {int bi_sector; } ;


 struct bio_list* BL (struct stripe*,int ,int) ;
 int CHUNK (struct stripe*,int ) ;
 int READ ;
 scalar_t__ S_BIOS_ADDED_READ ;
 scalar_t__ S_BIOS_ADDED_WRITE ;
 scalar_t__ S_IOS_POST ;
 int atomic_inc (scalar_t__) ;
 int bio_data_dir (struct bio*) ;
 int bio_list_add (struct bio_list*,struct bio*) ;
 int chunk_get (int ) ;
 int dm_rh_inc (int ,int ) ;
 int raid_address (struct raid_set*,int ,struct raid_address*) ;
 struct stripe* stripe_find (struct raid_set*,int ) ;
 int stripe_flush_add (struct stripe*) ;

__attribute__((used)) static int stripe_queue_bio(struct raid_set *rs, struct bio *bio,
       struct bio_list *reject)
{
 struct raid_address addr;
 struct stripe *stripe;

 stripe = stripe_find(rs, raid_address(rs, bio->bi_sector, &addr));
 if (stripe) {
  int r = 0, rw = bio_data_dir(bio);


  bio_list_add(BL(stripe, addr.di, rw), bio);

  if (rw == READ)

   atomic_inc(rs->stats + S_BIOS_ADDED_READ);
  else {

   dm_rh_inc(rs->recover.rh, stripe->region);
   r = 1;


   atomic_inc(rs->stats + S_BIOS_ADDED_WRITE);
  }





  if (chunk_get(CHUNK(stripe, addr.di)) == 1)
   stripe_flush_add(stripe);

  return r;
 }


 bio_list_add(reject, bio);
 atomic_inc(rs->stats + S_IOS_POST);
 return 0;
}
