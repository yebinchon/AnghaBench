
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int sb_wait; int pending_writes; } ;
struct md_rdev {struct mddev* mddev; } ;
struct bio {int bi_flags; struct md_rdev* bi_private; } ;


 int BIO_UPTODATE ;
 int WARN_ON (int ) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int bio_put (struct bio*) ;
 int md_error (struct mddev*,struct md_rdev*) ;
 int printk (char*,int,int ) ;
 int test_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static void super_written(struct bio *bio, int error)
{
 struct md_rdev *rdev = bio->bi_private;
 struct mddev *mddev = rdev->mddev;

 if (error || !test_bit(BIO_UPTODATE, &bio->bi_flags)) {
  printk("md: super_written gets error=%d, uptodate=%d\n",
         error, test_bit(BIO_UPTODATE, &bio->bi_flags));
  WARN_ON(test_bit(BIO_UPTODATE, &bio->bi_flags));
  md_error(mddev, rdev);
 }

 if (atomic_dec_and_test(&mddev->pending_writes))
  wake_up(&mddev->sb_wait);
 bio_put(bio);
}
