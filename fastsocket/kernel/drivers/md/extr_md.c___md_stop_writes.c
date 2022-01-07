
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ ro; int in_sync; scalar_t__ flags; int safemode_timer; int recovery; scalar_t__ sync_thread; } ;


 int MD_RECOVERY_FROZEN ;
 int MD_RECOVERY_INTR ;
 int bitmap_flush (struct mddev*) ;
 int del_timer_sync (int *) ;
 int md_reap_sync_thread (struct mddev*) ;
 int md_super_wait (struct mddev*) ;
 int md_update_sb (struct mddev*,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void __md_stop_writes(struct mddev *mddev)
{
 set_bit(MD_RECOVERY_FROZEN, &mddev->recovery);
 if (mddev->sync_thread) {
  set_bit(MD_RECOVERY_INTR, &mddev->recovery);
  md_reap_sync_thread(mddev);
 }

 del_timer_sync(&mddev->safemode_timer);

 bitmap_flush(mddev);
 md_super_wait(mddev);

 if (mddev->ro == 0 &&
     (!mddev->in_sync || mddev->flags)) {

  mddev->in_sync = 1;
  md_update_sb(mddev, 1);
 }
}
