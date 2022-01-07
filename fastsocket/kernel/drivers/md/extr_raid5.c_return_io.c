
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_bdev; scalar_t__ bi_size; struct bio* bi_next; } ;


 int bdev_get_queue (int ) ;
 int bio_endio (struct bio*,int ) ;
 int trace_block_bio_complete (int ,struct bio*) ;

__attribute__((used)) static void return_io(struct bio *return_bi)
{
 struct bio *bi = return_bi;
 while (bi) {

  return_bi = bi->bi_next;
  bi->bi_next = ((void*)0);
  bi->bi_size = 0;
  trace_block_bio_complete(bdev_get_queue(bi->bi_bdev),
      bi);
  bio_endio(bi, 0);
  bi = return_bi;
 }
}
