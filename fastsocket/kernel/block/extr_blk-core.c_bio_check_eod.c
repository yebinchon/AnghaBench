
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio {int bi_sector; TYPE_1__* bi_bdev; } ;
typedef int sector_t ;
struct TYPE_2__ {int bd_inode; } ;


 int handle_bad_sector (struct bio*) ;
 int i_size_read (int ) ;

__attribute__((used)) static inline int bio_check_eod(struct bio *bio, unsigned int nr_sectors)
{
 sector_t maxsector;

 if (!nr_sectors)
  return 0;


 maxsector = i_size_read(bio->bi_bdev->bd_inode) >> 9;
 if (maxsector) {
  sector_t sector = bio->bi_sector;

  if (maxsector < nr_sectors || maxsector - nr_sectors < sector) {





   handle_bad_sector(bio);
   return 1;
  }
 }

 return 0;
}
