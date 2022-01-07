
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_batch {int wait; int done; int flags; } ;
struct bio {struct bio_batch* bi_private; } ;


 int BIO_UPTODATE ;
 int EOPNOTSUPP ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int bio_put (struct bio*) ;
 int clear_bit (int ,int *) ;
 int complete (int ) ;

__attribute__((used)) static void bio_batch_end_io(struct bio *bio, int err)
{
 struct bio_batch *bb = bio->bi_private;

 if (err && (err != -EOPNOTSUPP))
  clear_bit(BIO_UPTODATE, &bb->flags);
 if (atomic_dec_and_test(&bb->done))
  complete(bb->wait);
 bio_put(bio);
}
