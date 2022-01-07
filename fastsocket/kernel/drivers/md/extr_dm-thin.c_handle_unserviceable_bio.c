
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int dummy; } ;
struct bio {int dummy; } ;


 int bio_io_error (struct bio*) ;
 int retry_on_resume (struct bio*) ;
 scalar_t__ should_error_unserviceable_bio (struct pool*) ;

__attribute__((used)) static void handle_unserviceable_bio(struct pool *pool, struct bio *bio)
{
 if (should_error_unserviceable_bio(pool))
  bio_io_error(bio);
 else
  retry_on_resume(bio);
}
