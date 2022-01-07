
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mirror_set {int rh; scalar_t__ in_sync; int log_failure; } ;
struct bio_list {int head; } ;
struct bio {int dummy; } ;


 int EIO ;
 int bio_endio (struct bio*,int ) ;
 struct bio* bio_list_pop (struct bio_list*) ;
 int dm_rh_mark_nosync (int ,struct bio*) ;
 scalar_t__ errors_handled (struct mirror_set*) ;
 int get_valid_mirror (struct mirror_set*) ;
 int hold_bio (struct mirror_set*,struct bio*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static void do_failures(struct mirror_set *ms, struct bio_list *failures)
{
 struct bio *bio;

 if (likely(!failures->head))
  return;
 while ((bio = bio_list_pop(failures))) {
  if (!ms->log_failure) {
   ms->in_sync = 0;
   dm_rh_mark_nosync(ms->rh, bio);
  }
  if (!get_valid_mirror(ms))
   bio_endio(bio, -EIO);
  else if (errors_handled(ms))
   hold_bio(ms, bio);
  else
   bio_endio(bio, 0);
 }
}
