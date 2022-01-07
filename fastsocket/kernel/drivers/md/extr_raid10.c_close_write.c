
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r10bio {TYPE_1__* mddev; int state; int sectors; int sector; } ;
struct TYPE_2__ {int bitmap; } ;


 int R10BIO_Degraded ;
 int bitmap_endwrite (int ,int ,int ,int,int ) ;
 int md_write_end (TYPE_1__*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void close_write(struct r10bio *r10_bio)
{

 bitmap_endwrite(r10_bio->mddev->bitmap, r10_bio->sector,
   r10_bio->sectors,
   !test_bit(R10BIO_Degraded, &r10_bio->state),
   0);
 md_write_end(r10_bio->mddev);
}
