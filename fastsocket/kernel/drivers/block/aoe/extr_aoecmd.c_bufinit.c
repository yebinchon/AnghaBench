
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request {int dummy; } ;
struct buf {scalar_t__ bv_resid; TYPE_1__* bv; int sector; int resid; struct bio* bio; struct request* rq; } ;
struct bio {size_t bi_idx; TYPE_1__* bi_io_vec; int bi_sector; int bi_size; } ;
struct TYPE_2__ {scalar_t__ bv_len; } ;


 int WARN_ON (int) ;
 int bio_pageinc (struct bio*) ;
 int memset (struct buf*,int ,int) ;

__attribute__((used)) static void
bufinit(struct buf *buf, struct request *rq, struct bio *bio)
{
 memset(buf, 0, sizeof(*buf));
 buf->rq = rq;
 buf->bio = bio;
 buf->resid = bio->bi_size;
 buf->sector = bio->bi_sector;
 bio_pageinc(bio);
 buf->bv = &bio->bi_io_vec[bio->bi_idx];
 buf->bv_resid = buf->bv->bv_len;
 WARN_ON(buf->bv_resid == 0);
}
