
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct md_rdev {TYPE_1__* mddev; int sysfs_state; int badblocks; scalar_t__ data_offset; scalar_t__ new_data_offset; } ;
typedef int sector_t ;
struct TYPE_2__ {int thread; int flags; } ;


 int MD_CHANGE_CLEAN ;
 int md_set_badblocks (int *,int ,int,int ) ;
 int md_wakeup_thread (int ) ;
 int set_bit (int ,int *) ;
 int sysfs_notify_dirent_safe (int ) ;

int rdev_set_badblocks(struct md_rdev *rdev, sector_t s, int sectors,
         int is_new)
{
 int rv;
 if (is_new)
  s += rdev->new_data_offset;
 else
  s += rdev->data_offset;
 rv = md_set_badblocks(&rdev->badblocks,
         s, sectors, 0);
 if (rv) {

  sysfs_notify_dirent_safe(rdev->sysfs_state);
  set_bit(MD_CHANGE_CLEAN, &rdev->mddev->flags);
  md_wakeup_thread(rdev->mddev->thread);
 }
 return rv;
}
