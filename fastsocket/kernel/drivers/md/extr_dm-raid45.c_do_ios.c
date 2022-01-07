
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ lists; } ;
struct TYPE_3__ {struct dm_rh_client* rh; } ;
struct raid_set {scalar_t__ stats; TYPE_2__ sc; TYPE_1__ recover; } ;
struct dm_rh_client {int dummy; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;
typedef int sector_t ;


 int DMERR_LIMIT (char*) ;
 int DM_RH_RECOVERING ;
 scalar_t__ LIST_FLUSH ;
 scalar_t__ RSProhibitWrites (struct raid_set*) ;
 scalar_t__ S_BARRIER ;
 scalar_t__ S_DELAYED_BIOS ;
 scalar_t__ S_SUM_DELAYED_BIOS ;
 int SetRSBandwidth (struct raid_set*) ;
 scalar_t__ WRITE ;
 int _sector (struct raid_set*,struct bio*) ;
 int atomic_inc (scalar_t__) ;
 scalar_t__ bio_data_dir (struct bio*) ;
 int bio_empty_barrier (struct bio*) ;
 int bio_list_add (struct bio_list*,struct bio*) ;
 int bio_list_empty (struct bio_list*) ;
 int bio_list_init (struct bio_list*) ;
 int bio_list_merge_head (struct bio_list*,struct bio_list*) ;
 struct bio* bio_list_pop (struct bio_list*) ;
 int bio_list_push (struct bio_list*,struct bio*) ;
 int dm_rh_delay_by_region (struct dm_rh_client*,struct bio*,int ) ;
 int dm_rh_flush (struct dm_rh_client*) ;
 int dm_rh_sector_to_region (struct dm_rh_client*,int ) ;
 int list_empty (scalar_t__) ;
 int region_state (struct raid_set*,int ,int ) ;
 scalar_t__ sc_active (TYPE_2__*) ;
 scalar_t__ stripe_queue_bio (struct raid_set*,struct bio*,struct bio_list*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void do_ios(struct raid_set *rs, struct bio_list *ios)
{
 int r;
 unsigned flush = 0, delay = 0;
 sector_t sector;
 struct dm_rh_client *rh = rs->recover.rh;
 struct bio *bio;
 struct bio_list reject;

 bio_list_init(&reject);






 while ((bio = bio_list_pop(ios))) {





  if (unlikely(bio_empty_barrier(bio))) {

   atomic_inc(rs->stats + S_BARRIER);
   if (delay ||
       !list_empty(rs->sc.lists + LIST_FLUSH) ||
       !bio_list_empty(&reject) ||
       sc_active(&rs->sc)) {
    bio_list_push(ios, bio);
    break;
   }
  }


  if (RSProhibitWrites(rs) && bio_data_dir(bio) == WRITE) {
   bio_list_add(&reject, bio);
   continue;
  }


  sector = _sector(rs, bio);
  r = region_state(rs, sector, DM_RH_RECOVERING);
  if (unlikely(r)) {
   delay++;

   dm_rh_delay_by_region(rh, bio,
           dm_rh_sector_to_region(rh,
             sector));

   atomic_inc(rs->stats + S_DELAYED_BIOS);
   atomic_inc(rs->stats + S_SUM_DELAYED_BIOS);


   SetRSBandwidth(rs);
  } else {




   flush += stripe_queue_bio(rs, bio, &reject);
  }
 }

 if (flush) {

  r = dm_rh_flush(rh);
  if (r)
   DMERR_LIMIT("dirty log flush");
 }


 bio_list_merge_head(ios, &reject);
}
