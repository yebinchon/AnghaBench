
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct mddev* queuedata; } ;
struct mddev {unsigned int chunk_sectors; unsigned int new_chunk_sectors; } ;
struct bvec_merge_data {unsigned int bi_sector; int bi_size; int bi_rw; int bi_bdev; } ;
struct bio_vec {int bv_len; } ;
typedef unsigned int sector_t ;


 int WRITE ;
 unsigned int get_start_sect (int ) ;

__attribute__((used)) static int raid5_mergeable_bvec(struct request_queue *q,
    struct bvec_merge_data *bvm,
    struct bio_vec *biovec)
{
 struct mddev *mddev = q->queuedata;
 sector_t sector = bvm->bi_sector + get_start_sect(bvm->bi_bdev);
 int max;
 unsigned int chunk_sectors = mddev->chunk_sectors;
 unsigned int bio_sectors = bvm->bi_size >> 9;

 if ((bvm->bi_rw & 1) == WRITE)
  return biovec->bv_len;

 if (mddev->new_chunk_sectors < mddev->chunk_sectors)
  chunk_sectors = mddev->new_chunk_sectors;
 max = (chunk_sectors - ((sector & (chunk_sectors - 1)) + bio_sectors)) << 9;
 if (max < 0) max = 0;
 if (max <= biovec->bv_len && bio_sectors == 0)
  return biovec->bv_len;
 else
  return max;
}
