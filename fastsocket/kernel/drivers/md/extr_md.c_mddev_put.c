
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ ctime; int del_work; scalar_t__ gendisk; struct bio_set* bio_set; int all_mddevs; int hold_active; int disks; int raid_disks; int active; } ;
struct bio_set {int dummy; } ;


 int INIT_WORK (int *,int ) ;
 int all_mddevs_lock ;
 int atomic_dec_and_lock (int *,int *) ;
 int bioset_free (struct bio_set*) ;
 int kfree (struct mddev*) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int md_misc_wq ;
 int mddev_delayed_delete ;
 int queue_work (int ,int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void mddev_put(struct mddev *mddev)
{
 struct bio_set *bs = ((void*)0);

 if (!atomic_dec_and_lock(&mddev->active, &all_mddevs_lock))
  return;
 if (!mddev->raid_disks && list_empty(&mddev->disks) &&
     mddev->ctime == 0 && !mddev->hold_active) {


  list_del_init(&mddev->all_mddevs);
  bs = mddev->bio_set;
  mddev->bio_set = ((void*)0);
  if (mddev->gendisk) {





   INIT_WORK(&mddev->del_work, mddev_delayed_delete);
   queue_work(md_misc_wq, &mddev->del_work);
  } else
   kfree(mddev);
 }
 spin_unlock(&all_mddevs_lock);
 if (bs)
  bioset_free(bs);
}
