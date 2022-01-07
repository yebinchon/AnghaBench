
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * page; } ;
struct md_rdev {TYPE_1__ badblocks; int * bb_page; scalar_t__ sectors; scalar_t__ sb_start; int * sb_page; scalar_t__ sb_loaded; } ;


 int kfree (int *) ;
 int put_page (int *) ;

void md_rdev_clear(struct md_rdev *rdev)
{
 if (rdev->sb_page) {
  put_page(rdev->sb_page);
  rdev->sb_loaded = 0;
  rdev->sb_page = ((void*)0);
  rdev->sb_start = 0;
  rdev->sectors = 0;
 }
 if (rdev->bb_page) {
  put_page(rdev->bb_page);
  rdev->bb_page = ((void*)0);
 }
 kfree(rdev->badblocks.page);
 rdev->badblocks.page = ((void*)0);
}
