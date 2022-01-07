
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bi_sector; int bi_size; struct bio* bi_private; } ;


 int bio_io_error (struct bio*) ;
 int bio_put (struct bio*) ;

__attribute__((used)) static void faulty_fail(struct bio *bio, int error)
{
 struct bio *b = bio->bi_private;

 b->bi_size = bio->bi_size;
 b->bi_sector = bio->bi_sector;

 bio_put(bio);

 bio_io_error(b);
}
