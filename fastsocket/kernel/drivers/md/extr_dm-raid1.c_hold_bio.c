
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mirror_set {int lock; int holds; int ti; int suspend; } ;
struct bio {int dummy; } ;


 int DM_ENDIO_REQUEUE ;
 int EIO ;
 scalar_t__ atomic_read (int *) ;
 int bio_endio (struct bio*,int ) ;
 int bio_list_add (int *,struct bio*) ;
 scalar_t__ dm_noflush_suspending (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void hold_bio(struct mirror_set *ms, struct bio *bio)
{




 spin_lock_irq(&ms->lock);

 if (atomic_read(&ms->suspend)) {
  spin_unlock_irq(&ms->lock);




  if (dm_noflush_suspending(ms->ti))
   bio_endio(bio, DM_ENDIO_REQUEUE);
  else
   bio_endio(bio, -EIO);
  return;
 }




 bio_list_add(&ms->holds, bio);
 spin_unlock_irq(&ms->lock);
}
