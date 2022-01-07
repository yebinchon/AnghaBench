
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_rdev {int badblocks; scalar_t__ data_offset; scalar_t__ new_data_offset; } ;
typedef int sector_t ;


 int md_clear_badblocks (int *,int ,int) ;

int rdev_clear_badblocks(struct md_rdev *rdev, sector_t s, int sectors,
    int is_new)
{
 if (is_new)
  s += rdev->new_data_offset;
 else
  s += rdev->data_offset;
 return md_clear_badblocks(&rdev->badblocks,
      s, sectors);
}
