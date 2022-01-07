
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct r1bio {int behind_page_count; TYPE_1__* mddev; int state; int sectors; int sector; TYPE_2__* behind_bvecs; } ;
struct TYPE_4__ {int bv_page; } ;
struct TYPE_3__ {int bitmap; } ;


 int R1BIO_BehindIO ;
 int R1BIO_Degraded ;
 int bitmap_endwrite (int ,int ,int ,int,scalar_t__) ;
 int kfree (TYPE_2__*) ;
 int md_write_end (TYPE_1__*) ;
 int safe_put_page (int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void close_write(struct r1bio *r1_bio)
{

 if (test_bit(R1BIO_BehindIO, &r1_bio->state)) {

  int i = r1_bio->behind_page_count;
  while (i--)
   safe_put_page(r1_bio->behind_bvecs[i].bv_page);
  kfree(r1_bio->behind_bvecs);
  r1_bio->behind_bvecs = ((void*)0);
 }

 bitmap_endwrite(r1_bio->mddev->bitmap, r1_bio->sector,
   r1_bio->sectors,
   !test_bit(R1BIO_Degraded, &r1_bio->state),
   test_bit(R1BIO_BehindIO, &r1_bio->state));
 md_write_end(r1_bio->mddev);
}
