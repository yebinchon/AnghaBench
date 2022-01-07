
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strip_zone {unsigned int dev_start; } ;
struct mddev {unsigned int chunk_sectors; int private; } ;
struct md_rdev {unsigned int data_offset; int bdev; } ;
struct bio {int bi_rw; unsigned int bi_sector; int bi_vcnt; scalar_t__ bi_idx; int bi_bdev; } ;
struct bio_pair {struct bio bio2; struct bio bio1; } ;
typedef unsigned int sector_t ;


 int BIO_DISCARD ;
 int BIO_FLUSH ;
 int bdev_get_queue (int ) ;
 int bio_endio (struct bio*,int ) ;
 int bio_io_error (struct bio*) ;
 int bio_pair_release (struct bio_pair*) ;
 int bio_sectors (struct bio*) ;
 struct bio_pair* bio_split (struct bio*,unsigned int) ;
 int blk_queue_discard (int ) ;
 struct strip_zone* find_zone (int ,unsigned int*) ;
 int generic_make_request (struct bio*) ;
 int is_io_in_chunk_boundary (struct mddev*,unsigned int,struct bio*) ;
 int is_power_of_2 (unsigned int) ;
 scalar_t__ likely (int ) ;
 struct md_rdev* map_sector (struct mddev*,struct strip_zone*,unsigned int,unsigned int*) ;
 int md_flush_request (struct mddev*,struct bio*) ;
 int mdname (struct mddev*) ;
 int printk (char*,int ,unsigned int,unsigned long long,int) ;
 unsigned int sector_div (unsigned int,unsigned int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int raid0_make_request(struct mddev *mddev, struct bio *bio)
{
 unsigned int chunk_sects;
 sector_t sector_offset;
 struct strip_zone *zone;
 struct md_rdev *tmp_dev;

 if (unlikely(bio->bi_rw & BIO_FLUSH)) {
  md_flush_request(mddev, bio);
  return 0;
 }

 chunk_sects = mddev->chunk_sectors;
 if (unlikely(!is_io_in_chunk_boundary(mddev, chunk_sects, bio))) {
  sector_t sector = bio->bi_sector;
  struct bio_pair *bp;

  if ((bio->bi_vcnt != 1 && bio->bi_vcnt != 0) ||
      bio->bi_idx != 0)
   goto bad_map;



  if (likely(is_power_of_2(chunk_sects)))
   bp = bio_split(bio, chunk_sects - (sector &
          (chunk_sects-1)));
  else
   bp = bio_split(bio, chunk_sects -
           sector_div(sector, chunk_sects));
  if (raid0_make_request(mddev, &bp->bio1))
   generic_make_request(&bp->bio1);
  if (raid0_make_request(mddev, &bp->bio2))
   generic_make_request(&bp->bio2);

  bio_pair_release(bp);
  return 0;
 }

 sector_offset = bio->bi_sector;
 zone = find_zone(mddev->private, &sector_offset);
 tmp_dev = map_sector(mddev, zone, bio->bi_sector,
        &sector_offset);
 bio->bi_bdev = tmp_dev->bdev;
 bio->bi_sector = sector_offset + zone->dev_start +
  tmp_dev->data_offset;

 if (unlikely((bio->bi_rw & BIO_DISCARD) &&
       !blk_queue_discard(bdev_get_queue(bio->bi_bdev)))) {

  bio_endio(bio, 0);
  return 0;
 }




 return 1;

bad_map:
 printk("md/raid0:%s: make_request bug: can't convert block across chunks"
        " or bigger than %dk %llu %d\n",
        mdname(mddev), chunk_sects / 2,
        (unsigned long long)bio->bi_sector, bio_sectors(bio) / 2);

 bio_io_error(bio);
 return 0;
}
