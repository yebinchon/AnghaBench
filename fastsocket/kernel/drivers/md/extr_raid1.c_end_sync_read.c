
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r1bio {int remaining; int state; int read_disk; } ;
struct bio {int bi_flags; struct r1bio* bi_private; } ;


 int BIO_UPTODATE ;
 int R1BIO_Uptodate ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int reschedule_retry (struct r1bio*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int update_head_pos (int ,struct r1bio*) ;

__attribute__((used)) static void end_sync_read(struct bio *bio, int error)
{
 struct r1bio *r1_bio = bio->bi_private;

 update_head_pos(r1_bio->read_disk, r1_bio);






 if (test_bit(BIO_UPTODATE, &bio->bi_flags))
  set_bit(R1BIO_Uptodate, &r1_bio->state);

 if (atomic_dec_and_test(&r1_bio->remaining))
  reschedule_retry(r1_bio);
}
