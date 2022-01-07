
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thin_c {int dummy; } ;
struct bio {int dummy; } ;


 int bio_endio (struct bio*,int ) ;

__attribute__((used)) static void process_bio_success(struct thin_c *tc, struct bio *bio)
{
 bio_endio(bio, 0);
}
