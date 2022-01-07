
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {scalar_t__ bi_private; int bi_flags; } ;


 int BIO_UPTODATE ;
 int bio_put (struct bio*) ;
 int clear_bit (int ,int *) ;
 int complete (scalar_t__) ;

__attribute__((used)) static void bio_end_flush(struct bio *bio, int err)
{
 if (err)
  clear_bit(BIO_UPTODATE, &bio->bi_flags);
 if (bio->bi_private)
  complete(bio->bi_private);
 bio_put(bio);
}
