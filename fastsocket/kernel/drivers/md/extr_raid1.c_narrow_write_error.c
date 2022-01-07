
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct r1conf {TYPE_1__* mirrors; } ;
struct r1bio {int sectors; int sector; int behind_page_count; TYPE_3__* master_bio; struct bio_vec* behind_bvecs; int state; struct mddev* mddev; } ;
struct mddev {struct r1conf* private; } ;
struct TYPE_5__ {int shift; } ;
struct md_rdev {int bdev; scalar_t__ data_offset; TYPE_2__ badblocks; } ;
struct bio_vec {int * bv_page; } ;
struct bio {int bi_sector; int bi_vcnt; int bi_size; int bi_idx; int bi_bdev; int bi_rw; int bi_io_vec; } ;
typedef int sector_t ;
struct TYPE_6__ {int bi_vcnt; int bi_idx; struct bio_vec* bi_io_vec; } ;
struct TYPE_4__ {struct md_rdev* rdev; } ;


 int GFP_NOIO ;
 int R1BIO_BehindIO ;
 int WRITE ;
 struct bio* bio_alloc_mddev (int ,int,struct mddev*) ;
 int bio_put (struct bio*) ;
 int md_trim_bio (struct bio*,int,int) ;
 int memcpy (int ,struct bio_vec*,int) ;
 scalar_t__ rdev_set_badblocks (struct md_rdev*,int,int,int ) ;
 scalar_t__ submit_bio_wait (int ,struct bio*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int narrow_write_error(struct r1bio *r1_bio, int i)
{
 struct mddev *mddev = r1_bio->mddev;
 struct r1conf *conf = mddev->private;
 struct md_rdev *rdev = conf->mirrors[i].rdev;
 int vcnt, idx;
 struct bio_vec *vec;
 int block_sectors;
 sector_t sector;
 int sectors;
 int sect_to_write = r1_bio->sectors;
 int ok = 1;

 if (rdev->badblocks.shift < 0)
  return 0;

 block_sectors = 1 << rdev->badblocks.shift;
 sector = r1_bio->sector;
 sectors = ((sector + block_sectors)
     & ~(sector_t)(block_sectors - 1))
  - sector;

 if (test_bit(R1BIO_BehindIO, &r1_bio->state)) {
  vcnt = r1_bio->behind_page_count;
  vec = r1_bio->behind_bvecs;
  idx = 0;
  while (vec[idx].bv_page == ((void*)0))
   idx++;
 } else {
  vcnt = r1_bio->master_bio->bi_vcnt;
  vec = r1_bio->master_bio->bi_io_vec;
  idx = r1_bio->master_bio->bi_idx;
 }
 while (sect_to_write) {
  struct bio *wbio;
  if (sectors > sect_to_write)
   sectors = sect_to_write;


  wbio = bio_alloc_mddev(GFP_NOIO, vcnt, mddev);
  memcpy(wbio->bi_io_vec, vec, vcnt * sizeof(struct bio_vec));
  wbio->bi_sector = r1_bio->sector;
  wbio->bi_rw = WRITE;
  wbio->bi_vcnt = vcnt;
  wbio->bi_size = r1_bio->sectors << 9;
  wbio->bi_idx = idx;

  md_trim_bio(wbio, sector - r1_bio->sector, sectors);
  wbio->bi_sector += rdev->data_offset;
  wbio->bi_bdev = rdev->bdev;
  if (submit_bio_wait(WRITE, wbio) == 0)

   ok = rdev_set_badblocks(rdev, sector,
      sectors, 0)
    && ok;

  bio_put(wbio);
  sect_to_write -= sectors;
  sector += sectors;
  sectors = block_sectors;
 }
 return ok;
}
