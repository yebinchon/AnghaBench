
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int td; } ;
struct bio {int bi_rw; } ;


 int BIO_FLUSH ;
 int BIO_FUA ;
 scalar_t__ dm_thin_changed_this_transaction (int ) ;

__attribute__((used)) static int bio_triggers_commit(struct thin_c *tc, struct bio *bio)
{
 return (bio->bi_rw & (BIO_FLUSH | BIO_FUA)) &&
  dm_thin_changed_this_transaction(tc->td);
}
