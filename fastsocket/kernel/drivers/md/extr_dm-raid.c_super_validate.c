
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int offset; } ;
struct mddev {TYPE_1__ bitmap_info; int events; } ;
struct md_rdev {int flags; int recovery_offset; int raid_disk; int saved_raid_disk; TYPE_3__* mddev; int sb_page; } ;
struct dm_raid_superblock {int disk_recovery_offset; } ;
struct TYPE_5__ {int default_offset; } ;
struct TYPE_6__ {TYPE_2__ bitmap_info; } ;


 int EINVAL ;
 int Faulty ;
 int FirstUse ;
 int In_sync ;
 int MaxSector ;
 int clear_bit (int ,int *) ;
 int le64_to_cpu (int ) ;
 struct dm_raid_superblock* page_address (int ) ;
 scalar_t__ super_init_validation (struct mddev*,struct md_rdev*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int super_validate(struct mddev *mddev, struct md_rdev *rdev)
{
 struct dm_raid_superblock *sb = page_address(rdev->sb_page);





 if (!mddev->events && super_init_validation(mddev, rdev))
  return -EINVAL;

 mddev->bitmap_info.offset = 4096 >> 9;
 rdev->mddev->bitmap_info.default_offset = 4096 >> 9;
 if (!test_bit(FirstUse, &rdev->flags)) {
  rdev->recovery_offset = le64_to_cpu(sb->disk_recovery_offset);
  if (rdev->recovery_offset != MaxSector)
   clear_bit(In_sync, &rdev->flags);
 }




 if (test_bit(Faulty, &rdev->flags)) {
  clear_bit(Faulty, &rdev->flags);
  clear_bit(In_sync, &rdev->flags);
  rdev->saved_raid_disk = rdev->raid_disk;
  rdev->recovery_offset = 0;
 }

 clear_bit(FirstUse, &rdev->flags);

 return 0;
}
