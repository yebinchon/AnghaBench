
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct md_rdev {TYPE_1__* mddev; int flags; } ;
typedef int sector_t ;
struct TYPE_2__ {int recovery; } ;


 int MD_RECOVERY_NEEDED ;
 int WRITE ;
 int WantReplacement ;
 int WriteErrorSeen ;
 int md_error (TYPE_1__*,struct md_rdev*) ;
 int rdev_set_badblocks (struct md_rdev*,int ,int,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ sync_page_io (struct md_rdev*,int ,int,struct page*,int,int) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int r1_sync_page_io(struct md_rdev *rdev, sector_t sector,
       int sectors, struct page *page, int rw)
{
 if (sync_page_io(rdev, sector, sectors << 9, page, rw, 0))

  return 1;
 if (rw == WRITE) {
  set_bit(WriteErrorSeen, &rdev->flags);
  if (!test_and_set_bit(WantReplacement,
          &rdev->flags))
   set_bit(MD_RECOVERY_NEEDED, &
    rdev->mddev->recovery);
 }

 if (!rdev_set_badblocks(rdev, sector, sectors, 0))
  md_error(rdev->mddev, rdev);
 return 0;
}
