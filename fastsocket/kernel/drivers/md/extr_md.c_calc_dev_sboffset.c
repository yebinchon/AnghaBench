
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct md_rdev {TYPE_1__* bdev; } ;
typedef int sector_t ;
struct TYPE_2__ {int bd_inode; } ;


 int MD_NEW_SIZE_SECTORS (int) ;
 int i_size_read (int ) ;

__attribute__((used)) static inline sector_t calc_dev_sboffset(struct md_rdev *rdev)
{
 sector_t num_sectors = i_size_read(rdev->bdev->bd_inode) / 512;
 return MD_NEW_SIZE_SECTORS(num_sectors);
}
