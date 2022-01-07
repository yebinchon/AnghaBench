
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {struct bio* bio; } ;
struct bio {struct bio* bi_next; } ;


 int bio_put (struct bio*) ;

void blk_rq_unprep_clone(struct request *rq)
{
 struct bio *bio;

 while ((bio = rq->bio) != ((void*)0)) {
  rq->bio = bio->bi_next;

  bio_put(bio);
 }
}
