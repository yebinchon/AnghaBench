
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {unsigned int __data_len; unsigned int resid_len; int nr_phys_segments; int buffer; struct bio* bio; } ;
struct page {int dummy; } ;
struct bio {unsigned int bi_size; int bi_vcnt; int bi_phys_segments; TYPE_1__* bi_io_vec; } ;
struct TYPE_2__ {unsigned int bv_len; scalar_t__ bv_offset; struct page* bv_page; } ;


 int bio_data (struct bio*) ;

void blk_add_request_payload(struct request *rq, struct page *page,
  unsigned int len)
{
 struct bio *bio = rq->bio;

 bio->bi_io_vec->bv_page = page;
 bio->bi_io_vec->bv_offset = 0;
 bio->bi_io_vec->bv_len = len;

 bio->bi_size = len;
 bio->bi_vcnt = 1;
 bio->bi_phys_segments = 1;

 rq->__data_len = rq->resid_len = len;
 rq->nr_phys_segments = 1;
 rq->buffer = bio_data(bio);
}
