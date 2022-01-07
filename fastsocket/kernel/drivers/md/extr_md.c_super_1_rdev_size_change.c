
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mdp_superblock_1 {unsigned long long super_offset; int sb_csum; int data_size; } ;
struct md_rdev {scalar_t__ data_offset; scalar_t__ new_data_offset; scalar_t__ sb_start; unsigned long long sectors; TYPE_3__* mddev; int sb_page; int sb_size; TYPE_2__* bdev; } ;
typedef unsigned long long sector_t ;
struct TYPE_5__ {scalar_t__ offset; } ;
struct TYPE_7__ {unsigned long long dev_sectors; TYPE_1__ bitmap_info; } ;
struct TYPE_6__ {int bd_inode; } ;


 int calc_sb_1_csum (struct mdp_superblock_1*) ;
 int cpu_to_le64 (unsigned long long) ;
 int i_size_read (int ) ;
 int md_super_wait (TYPE_3__*) ;
 int md_super_write (TYPE_3__*,struct md_rdev*,unsigned long long,int ,int ) ;
 struct mdp_superblock_1* page_address (int ) ;

__attribute__((used)) static unsigned long long
super_1_rdev_size_change(struct md_rdev *rdev, sector_t num_sectors)
{
 struct mdp_superblock_1 *sb;
 sector_t max_sectors;
 if (num_sectors && num_sectors < rdev->mddev->dev_sectors)
  return 0;
 if (rdev->data_offset != rdev->new_data_offset)
  return 0;
 if (rdev->sb_start < rdev->data_offset) {

  max_sectors = i_size_read(rdev->bdev->bd_inode) >> 9;
  max_sectors -= rdev->data_offset;
  if (!num_sectors || num_sectors > max_sectors)
   num_sectors = max_sectors;
 } else if (rdev->mddev->bitmap_info.offset) {

  return 0;
 } else {

  sector_t sb_start;
  sb_start = (i_size_read(rdev->bdev->bd_inode) >> 9) - 8*2;
  sb_start &= ~(sector_t)(4*2 - 1);
  max_sectors = rdev->sectors + sb_start - rdev->sb_start;
  if (!num_sectors || num_sectors > max_sectors)
   num_sectors = max_sectors;
  rdev->sb_start = sb_start;
 }
 sb = page_address(rdev->sb_page);
 sb->data_size = cpu_to_le64(num_sectors);
 sb->super_offset = rdev->sb_start;
 sb->sb_csum = calc_sb_1_csum(sb);
 md_super_write(rdev->mddev, rdev, rdev->sb_start, rdev->sb_size,
         rdev->sb_page);
 md_super_wait(rdev->mddev);
 return num_sectors;

}
