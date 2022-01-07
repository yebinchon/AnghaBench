
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r10bio {int state; int * master_bio; int sectors; int remaining; struct mddev* mddev; } ;
struct mddev {int dummy; } ;
typedef int sector_t ;


 int R10BIO_MadeGood ;
 int R10BIO_WriteError ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int md_done_sync (struct mddev*,int ,int) ;
 int put_buf (struct r10bio*) ;
 int reschedule_retry (struct r10bio*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void end_sync_request(struct r10bio *r10_bio)
{
 struct mddev *mddev = r10_bio->mddev;

 while (atomic_dec_and_test(&r10_bio->remaining)) {
  if (r10_bio->master_bio == ((void*)0)) {

   sector_t s = r10_bio->sectors;
   if (test_bit(R10BIO_MadeGood, &r10_bio->state) ||
       test_bit(R10BIO_WriteError, &r10_bio->state))
    reschedule_retry(r10_bio);
   else
    put_buf(r10_bio);
   md_done_sync(mddev, s, 1);
   break;
  } else {
   struct r10bio *r10_bio2 = (struct r10bio *)r10_bio->master_bio;
   if (test_bit(R10BIO_MadeGood, &r10_bio->state) ||
       test_bit(R10BIO_WriteError, &r10_bio->state))
    reschedule_retry(r10_bio);
   else
    put_buf(r10_bio);
   r10_bio = r10_bio2;
  }
 }
}
