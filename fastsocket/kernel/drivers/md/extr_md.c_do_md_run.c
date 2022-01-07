
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mddev {int changed; int gendisk; int array_sectors; int sync_thread; int thread; } ;
struct TYPE_2__ {int kobj; } ;


 int KOBJ_CHANGE ;
 int bitmap_destroy (struct mddev*) ;
 int bitmap_load (struct mddev*) ;
 TYPE_1__* disk_to_dev (int ) ;
 int kobject_uevent (int *,int ) ;
 int md_run (struct mddev*) ;
 int md_wakeup_thread (int ) ;
 int revalidate_disk (int ) ;
 int set_capacity (int ,int ) ;

__attribute__((used)) static int do_md_run(struct mddev *mddev)
{
 int err;

 err = md_run(mddev);
 if (err)
  goto out;
 err = bitmap_load(mddev);
 if (err) {
  bitmap_destroy(mddev);
  goto out;
 }

 md_wakeup_thread(mddev->thread);
 md_wakeup_thread(mddev->sync_thread);

 set_capacity(mddev->gendisk, mddev->array_sectors);
 revalidate_disk(mddev->gendisk);
 mddev->changed = 1;
 kobject_uevent(&disk_to_dev(mddev->gendisk)->kobj, KOBJ_CHANGE);
out:
 return err;
}
