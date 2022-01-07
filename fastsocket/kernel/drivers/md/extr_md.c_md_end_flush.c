
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int flush_work; int flush_pending; } ;
struct md_rdev {struct mddev* mddev; } ;
struct bio {struct md_rdev* bi_private; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int bio_put (struct bio*) ;
 int md_wq ;
 int queue_work (int ,int *) ;
 int rdev_dec_pending (struct md_rdev*,struct mddev*) ;

__attribute__((used)) static void md_end_flush(struct bio *bio, int err)
{
 struct md_rdev *rdev = bio->bi_private;
 struct mddev *mddev = rdev->mddev;

 rdev_dec_pending(rdev, mddev);

 if (atomic_dec_and_test(&mddev->flush_pending)) {

  queue_work(md_wq, &mddev->flush_work);
 }
 bio_put(bio);
}
