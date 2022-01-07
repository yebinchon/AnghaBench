
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r1conf {int device_lock; } ;
struct r1bio {int state; TYPE_1__* mddev; struct bio* master_bio; } ;
struct bio {scalar_t__ bi_phys_segments; int bi_flags; } ;
struct TYPE_2__ {struct r1conf* private; } ;


 int BIO_UPTODATE ;
 int R1BIO_Uptodate ;
 int allow_barrier (struct r1conf*) ;
 int bio_endio (struct bio*,int ) ;
 int clear_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void call_bio_endio(struct r1bio *r1_bio)
{
 struct bio *bio = r1_bio->master_bio;
 int done;
 struct r1conf *conf = r1_bio->mddev->private;

 if (bio->bi_phys_segments) {
  unsigned long flags;
  spin_lock_irqsave(&conf->device_lock, flags);
  bio->bi_phys_segments--;
  done = (bio->bi_phys_segments == 0);
  spin_unlock_irqrestore(&conf->device_lock, flags);
 } else
  done = 1;

 if (!test_bit(R1BIO_Uptodate, &r1_bio->state))
  clear_bit(BIO_UPTODATE, &bio->bi_flags);
 if (done) {
  bio_endio(bio, 0);




  allow_barrier(conf);
 }
}
