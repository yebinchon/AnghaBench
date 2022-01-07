
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio_set {int dummy; } ;
struct bio {struct bio_set* bi_private; } ;


 int bio_free (struct bio*,struct bio_set*) ;

__attribute__((used)) static void dm_bio_destructor(struct bio *bio)
{
 struct bio_set *bs = bio->bi_private;

 bio_free(bio, bs);
}
