
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_rw; } ;


 int BIO_FLUSH ;
 int BIO_FUA ;

__attribute__((used)) static bool blk_rq_should_init_elevator(struct bio *bio)
{
 if (!bio)
  return 1;





 if (bio->bi_rw & (BIO_FLUSH | BIO_FUA))
  return 0;

 return 1;
}
