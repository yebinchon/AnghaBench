
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hd_struct {scalar_t__ start_sect; } ;
struct block_device {int bd_dev; struct block_device* bd_contains; struct hd_struct* bd_part; } ;
struct bio {scalar_t__ bi_sector; struct block_device* bi_bdev; } ;


 int bdev_get_queue (struct block_device*) ;
 scalar_t__ bio_sectors (struct bio*) ;
 int trace_block_remap (int ,struct bio*,int ,scalar_t__) ;

__attribute__((used)) static inline void blk_partition_remap(struct bio *bio)
{
 struct block_device *bdev = bio->bi_bdev;

 if (bio_sectors(bio) && bdev != bdev->bd_contains) {
  struct hd_struct *p = bdev->bd_part;

  bio->bi_sector += p->start_sect;
  bio->bi_bdev = bdev->bd_contains;

  trace_block_remap(bdev_get_queue(bio->bi_bdev), bio,
        bdev->bd_dev,
        bio->bi_sector - p->start_sect);
 }
}
