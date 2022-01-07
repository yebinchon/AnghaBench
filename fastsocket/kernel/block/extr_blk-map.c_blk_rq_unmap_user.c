
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {struct bio* bi_next; struct bio* bi_private; } ;


 int BIO_BOUNCED ;
 int __blk_rq_unmap_user (struct bio*) ;
 int bio_flagged (struct bio*,int ) ;
 int bio_put (struct bio*) ;
 scalar_t__ unlikely (int ) ;

int blk_rq_unmap_user(struct bio *bio)
{
 struct bio *mapped_bio;
 int ret = 0, ret2;

 while (bio) {
  mapped_bio = bio;
  if (unlikely(bio_flagged(bio, BIO_BOUNCED)))
   mapped_bio = bio->bi_private;

  ret2 = __blk_rq_unmap_user(mapped_bio);
  if (ret2 && !ret)
   ret = ret2;

  mapped_bio = bio;
  bio = bio->bi_next;
  bio_put(mapped_bio);
 }

 return ret;
}
